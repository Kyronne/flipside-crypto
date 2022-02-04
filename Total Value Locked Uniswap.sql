SELECT
date(block_timestamp) as date,
  sum(token0_balance_usd) + sum(token1_balance_usd) as tvl_usd
FROM uniswapv3.pool_stats
WHERE
date > CURRENT_DATE - 30
GROUP BY
1
ORDER BY
2
