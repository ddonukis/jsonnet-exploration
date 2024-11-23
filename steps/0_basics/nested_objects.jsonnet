{
    type: "person",
    birthplace: {
        city: "Sydney",
        country: "Australia",
    },
    education: [
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
    education_duration: self.education[0].duration + self.education[1].duration
}
