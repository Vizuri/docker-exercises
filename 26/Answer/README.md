# Description
It looks like something happened about 15 minutes ago.
How can you determine what containers ran in the last 20 minutes?

# Answer
Using  `docker logs` might tell you what you need to know but you might also be able to use `docker events --since '10m'` to see exactly what the docker engine was doing recently.

Try a few variations like these to see what kind of output you get.
Replace the time values with ones relevant to your system.
Note the number of variations on what can be requested and that the output format can be machine readable.

    docker events
    docker events --since '10m'
    docker events --since '2017-04-04T11:00:00' --until '2017-04-04T12:00:00'
    docker events --since '2017-04-04'
    docker events --since '2017-04-04T01:00:00'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=start'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die' --filter 'event=start'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die' --filter 'event=start' --format '{{json .}}'


