<dashboard>
  <!-- A title for the dashboard -->
  <label>Basic Dashboard</label>
  
  <!-- Provide a description -->
  <description>Illustrate the basic structures of a dashboard</description>

  <!-- Place panels within rows -->
  <row>

    <!-- This basic dashboard has only a single panel -->
    <panel>
    
      <table>
        <title>Top Sourcetypes (Last 24 hours)</title>

        <!-- A search powers the panel -->
        <search>
          <query>
          index=_internal | top limit=100 sourcetype | eval percent = round(percent,2)
          </query>
          <!-- Specify a time range for the search -->
          <earliest>-24h@h</earliest>
          <latest>now</latest>
        </search>

        <!-- Use options to further define how to display result data -->
        <option name="wrap">true</option>
        <option name="rowNumbers">true</option>
      </table>
    </panel>
  </row>

</dashboard>

