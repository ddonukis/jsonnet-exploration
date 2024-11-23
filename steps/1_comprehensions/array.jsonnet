{
    type: "person",
    education: [
        {
            type: "school",
            duration: 10,
        },
        {
            type: "high school",
            duration: 2,
        },
        {
            type: "university",
            duration: 5,
        },
    ],
    education_duration: {
        as_array: [e.duration for e in $.education],
        sum_method_1: std.sum(self.as_array),
        sum_method_2: std.foldl(
            function(acc, item) acc + item,
            self.as_array,
            0
        ),
    },
}
