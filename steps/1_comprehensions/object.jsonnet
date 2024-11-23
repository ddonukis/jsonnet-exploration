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
    education_duration_by_type: {
        [item.type]: item.duration for item in $.education
    },
    cumulative_education_duration_by_type: {
        [$.education[i].type]:
            std.sum([
                $.education[j].duration
                for j in std.range(0, i)
            ])
        for i in std.range(0, std.length($.education) - 1)
    },
}
