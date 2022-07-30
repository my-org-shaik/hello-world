<dashboard>
  <label>Searches power dashboards</label>
  <description>Show the various searches to power a panel.</description>
  <!-- This row contains three panels -->
  <row>
    <panel>
      <table>
        <title>(Inline Search) Top Source Types</title>
        <!-- Inline Search -->
        <search>
          <query>
          index=_internal | top limit=100 sourcetype
          | eval percent = round(percent,2)
          </query>
          <earliest>-24h@h</earliest>
          <latest>now</latest>
        </search>
        <option name="rowNumbers">true</option>
      </table>
    </panel>
    <panel>
      <chart>
        <title>(Report) Top Source Types</title>
        <!-- Reference to a search saved as a report -->
        <search ref="Top Source Types Report" />
      </chart>
    </panel>
  </row>
  <row>
    <panel ref="top_source_types_in_the_last_hour" app="search" />

    <panel>
      <chart>
        <title>(Pivot)  Game Purchases</title>
        
        <!-- Inline search derived from a pivot -->
        <search>
          <query>
          | pivot Buttercup_Games Successful_purchases count(Successful_purchases)
          AS "Count of Successful purchases" SPLITROW product_name
          AS "product name" SORT 100 product_name
          </query>
        </search>
        <option name="charting.chart">pie</option>
      </chart>
    </panel>
  </row>
</dashboard>
