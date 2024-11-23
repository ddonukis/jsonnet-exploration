{
    type: "person",
    birthplace: {
        city: "Sydney",
        country: "Australia",
    },
    education: [
        {
            type: "school",
            duration: 10,
        },
        {
            type: "high school",
            location: {
                city: $.birthplace.city,
                country: $.birthplace.country,
            },
            duration: 2,
        },
        {
            type: "university",
            location: $.birthplace,
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
