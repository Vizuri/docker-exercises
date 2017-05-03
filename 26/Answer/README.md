# Description
It looks like something happened about 15 minutes ago.
How can you determine what containers ran in the last 20 minutes?

# Answer
Using  `docker logs` might tell you what you need to know but you might also be able to use `docker events --since '10m'` to see exactly what the docker engine was doing recently or some specific period of time in the past.

Try a few variations like these to see what kind of output you get.
Replace the time values with ones relevant to your system.
Note the number of variations on what can be requested and that the output format can be machine readable.

    docker events
    docker events --since '10m'
    docker events --since '2017-04-04'
    docker events --since '2017-04-04T01:00:00'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=start'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die' --filter 'event=start'
    docker events --since '2017-04-03T00:00:00' --until '2017-04-03T23:59:59' --filter 'event=die' --filter 'event=start' --format '{{json .}}'


Take a look at the type of information that appears in the output.
You should see timestamps, container id, lifecycle stat and image information.
Notice the various container related states that appear in the output such as `create`, `attach`, `connect`, `start`, `die`, `disconnect` and `destroy`
These might be useful to be aware of when trouble shooting.

They might also be helpful if you are interested in chargeback accounting.
If you do an `inspect` on the container id you can get more information.
One approach to making use of this information is to post process the output, collect more details (using `inspect`) and then send that to your log aggregation system.

On chargeback accounting or just awareness of who was running what, making a practice of using names and labels in building and running images can assist in getting more information available via the `inspect` output.

If you are interested in capturing specific events you can filter by type.
In the following we are looking for any events associated with image pulls only.

```
$ docker events --filter 'type=image' --filter 'event=pull' --format '{{json .}}'

{"status":"pull","id":"alpine:latest","Type":"image","Action":"pull","Actor":{"ID":"alpine:latest","Attributes":{"name":"alpine"}},"time":1493827292,"timeNano":1493827292425544865}
```

A complete list of the events that can be used in a filter can be found at [https://docs.docker.com/engine/reference/commandline/events/#object-types](https://docs.docker.com/engine/reference/commandline/events/#object-types)

