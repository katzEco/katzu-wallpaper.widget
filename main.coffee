# Developed by Suphakit P.
# GitHub: https://github.com/dethMastery/
# website: https://dethMastery.github.io/U-bersicht-widget
# Github Repo: https://github.com/dethMastery/U-bersicht-widget

# Refresh time every 10 seconds
refreshFrequency: 1000

style: """
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Thai:wght@100;200;300;400;500;600;700&display=swap')

*
  font-family: "IBM Plex Sans Thai", sans-serif

.mainClock
  width: 100vw
  height: 100vh
  display: flex
  flex-direction: column
  justify-content: center
  text-align: center
  align-items: center

.hover
  padding: 1rem
  background: rgba(0, 0, 0, 0.6)
  border-radius: 1rem
  color: whitesmoke

.hour, .min, .sec
  font-size: 100px

.colon
  padding: 0 .5rem
  font-size: 100px
  
.day, .date, .month, .year
  padding: 0 .25rem
  font-size: 30px
"""

render: -> """
  <div class='mainClock'>
    <div class="hover">
      <span class="hour"></span>
      <span class="colon">:</span>
      <span class="min"></span>
      <span class="colon">:</span>
      <span class="sec"></span>

      <br>

      <span class="day"></span>
      <span class="date"></span>
      <span class="month"></span>
      <span class="year"></span>
    </div>
  </div>
"""

update: (output, domEl) ->
  time = new Date()

  dayNum = time.getDay()
  dateNum = time.getDate()
  monthNum = time.getMonth()
  year = time.getFullYear()

  hr = time.getHours()
  min = time.getMinutes()
  sec = time.getSeconds()

  hr = "0" + hr if hr < 10
  min = "0" + min if min < 10
  sec = "0" + sec if sec < 10

  day = "Sun." if (dayNum == 0)
  day = "Mon." if (dayNum == 1)
  day = "Tue." if (dayNum == 2)
  day = "Wed." if (dayNum == 3)
  day = "Thu." if (dayNum == 4)
  day = "Fri." if (dayNum == 5)
  day = "Sat." if (dayNum == 6)

  month = "Jan." if (monthNum == 0)
  month = "Feb." if (monthNum == 1)
  month = "Mar." if (monthNum == 2)
  month = "Apr." if (monthNum == 3)
  month = "May." if (monthNum == 4)
  month = "Jun." if (monthNum == 5)
  month = "Jul." if (monthNum == 6)
  month = "Aug." if (monthNum == 7)
  month = "Sep." if (monthNum == 8)
  month = "Oct." if (monthNum == 9)
  month = "Nov." if (monthNum == 10)
  month = "Dec." if (monthNum == 11)

  $(domEl).find('.hour').text("#{hr}")
  $(domEl).find('.min').text("#{min}")
  $(domEl).find('.sec').text("#{sec}")

  $(domEl).find('.day').text("#{day}")
  $(domEl).find('.date').text("#{dateNum}")
  $(domEl).find('.month').text("#{month}")
  $(domEl).find('.year').text("#{year}")