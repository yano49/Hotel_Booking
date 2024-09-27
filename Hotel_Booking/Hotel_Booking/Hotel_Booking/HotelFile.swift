//
//  HotelFile.swift
//  Hotel_Booking
//
//  Created by SHIN MIN  on 27/09/2024.
//

import Foundation

struct Hotel {
    var name: String
    var address: String
    var facilities: [String]
}

let mandarinOriental = Hotel(
    name: "Mandarin Oriental, Bangkok",
    address: "48 Oriental Avenue, Bang Rak, Bangkok 10500, Thailand",
    facilities: [
        "Luxurious rooms and suites with Chao Phraya River views",
        "Award-winning restaurants like Le Normandie and The China House",
        "Full-service spa with traditional Thai massages",
        "Outdoor swimming pools and a state-of-the-art fitness center",
        "Event and meeting spaces with riverfront settings"
    ]
)


let anantaraGoldenTriangle = Hotel(
    name: "Anantara Golden Triangle Elephant Camp & Resort, Chiang Rai",
    address: "229 Moo 1, Chiang Saen Sub-district, Chiang Rai 57150, Thailand",
    facilities: [
        "Luxurious rooms with panoramic views of the Mekong River",
        "Unique elephant experiences, including elephant trekking and bathing",
        "Infinity pool and outdoor Jacuzzi",
        "On-site spa offering traditional Thai treatments",
        "Restaurants serving Northern Thai cuisine with Mekong River views"
    ]
)

let rayavadeeKrabi = Hotel(
    name: "Rayavadee, Krabi",
    address: "214 Moo 2, Tambon Ao Nang, Amphoe Muang, Krabi 81180, Thailand",
    facilities: [
        "Private pavilions and beachfront villas surrounded by limestone cliffs",
        "Exclusive access to three stunning beaches: Railay, Phra Nang, and Nam Mao",
        "Full-service spa set amidst lush tropical gardens",
        "Outdoor pool with cliffside views",
        "Restaurants offering Thai, international, and seafood cuisine"
    ]
)

let trisaraPhuket = Hotel(
    name: "Trisara, Phuket",
    address: "60/1 Moo 6, Srisoonthorn Road, Cherngtalay, Thalang, Phuket 83110, Thailand",
    facilities: [
        "Private pool villas with ocean views",
        "Private beach access",
        "Award-winning spa with exclusive holistic treatments",
        "Michelin-starred PRU restaurant featuring farm-to-table dining",
        "Fitness center, tennis courts, and non-motorized water sports"
    ]
)

let sriPanwaPhuket = Hotel(
    name: "Sri Panwa Phuket",
    address: "88 Moo 8, Sakdidej Road, Vichit, Muang, Phuket 83000, Thailand",
    facilities: [
        "Luxury pool villas with panoramic ocean views",
        "Exclusive rooftop bar and restaurant",
        "Full-service spa with ocean-view treatment rooms",
        "Private beach and infinity pools",
        "Yoga, tennis courts, and cooking classes"
    ]
)

let theNaiHarnPhuket = Hotel(
    name: "The Nai Harn, Phuket",
    address: "23/3 Moo 1, Vises Road, Rawai, Muang, Phuket 83130, Thailand",
    facilities: [
        "Oceanfront rooms and suites with large balconies",
        "Rooftop bar with panoramic views of Nai Harn Beach",
        "On-site spa and wellness center",
        "Infinity pool overlooking the beach",
        "Water sports and recreational activities"
    ]
)

let amanpuriPhuket = Hotel(
    name: "Amanpuri, Phuket",
    address: "Pansea Beach, Cherngtalay, Thalang, Phuket 83110, Thailand",
    facilities: [
        "Private pavilions and villas with beach access",
        "Multiple dining options including Thai, Italian, and Japanese",
        "Luxury spa with individual treatment rooms",
        "Private beach, water sports, and tennis courts",
        "Kids’ club and cultural activities"
    ]
)

let banyanTreePhuket = Hotel(
    name: "Banyan Tree Phuket",
    address: "33, 33/27 Moo 4, Srisoonthorn Road, Cherngtalay, Thalang, Phuket 83110, Thailand",
    facilities: [
        "Private pool villas with garden and lagoon views",
        "Luxury spa with holistic treatments",
        "Lagoon-side golf course",
        "Multiple restaurants and bars",
        "Fitness center, tennis courts, and yoga classes"
    ]
)

let fourSeasonsChiangMai = Hotel(
    name: "Four Seasons Resort, Chiang Mai",
    address: "502 Moo 1 Mae Rim-Samoeng Old Road, Rim Tai, Mae Rim District, Chiang Mai 50180, Thailand",
    facilities: [
        "Private villas with mountain views",
        "Spa with outdoor salas",
        "Infinity pool and gardens",
        "Yoga and meditation programs",
        "Cooking school"
    ]
)

let dharaDheviChiangMai = Hotel(
    name: "Dhara Dhevi Chiang Mai",
    address: "51/4 Chiang Mai-Sankampaeng Road, Moo 1, T. Tasala, A. Muang, Chiang Mai 50000, Thailand",
    facilities: [
        "Luxurious suites and villas with Lanna architecture",
        "Full-service spa set in a colonial-style mansion",
        "Multiple restaurants offering Thai and international cuisine",
        "Two swimming pools and a fitness center",
        "Cooking school, cultural activities, and kids’ club"
    ]
)

let anantaraChiangMai = Hotel(
    name: "Anantara Chiang Mai Resort",
    address: "123 Charoen Prathet Road, Chang Klan, Muang, Chiang Mai 50100, Thailand",
    facilities: [
        "Contemporary rooms and suites with river views",
        "Infinity pool and riverside terrace",
        "Award-winning spa with Thai and Ayurvedic treatments",
        "Multiple dining options and afternoon tea",
        "Yoga, meditation, and Muay Thai classes"
    ]
)

let PillarsHouseChiangMai = Hotel(
    name: "137 Pillars House, Chiang Mai",
    address: "2 Soi 1, Nawatgate Road, Watgate, Muang, Chiang Mai 50000, Thailand",
    facilities: [
        "Colonial-style suites with garden views",
        "Full-service spa with indoor and outdoor treatment areas",
        "Swimming pool with poolside bar",
        "Signature dining experiences",
        "Library, art gallery, and meeting spaces"
    ]
)

let rayaHeritageChiangMai = Hotel(
    name: "Raya Heritage, Chiang Mai",
    address: "157 Moo 6, Don Kaeo, Mae Rim District, Chiang Mai 50180, Thailand",
    facilities: [
        "Luxurious suites with private terraces",
        "Heritage-inspired design with handcrafted decor",
        "Exclusive riverside restaurant and bar",
        "Wellness and spa services",
        "Outdoor pool and riverside relaxation areas"
    ]
)
let interContinentalPattaya = Hotel(
    name: "InterContinental Pattaya Resort",
    address: "437 Phra Tamnak Road, Chonburi 20150, Pattaya, Thailand",
    facilities: [
        "Luxury rooms and villas with garden or ocean views",
        "Private beach access",
        "Three swimming pools with ocean views",
        "Full-service spa and fitness center",
        "Multiple dining options with oceanfront seating"
    ]
)

let royalCliffBeachPattaya = Hotel(
    name: "Royal Cliff Beach Hotel",
    address: "353 Phra Tamnak Road, Pattaya City, Chonburi 20150, Thailand",
    facilities: [
        "Rooms and suites with Gulf of Thailand views",
        "Private beach and seven swimming pools",
        "Award-winning restaurants and bars",
        "Full-service spa and tennis courts",
        "Convention and event facilities"
    ]
)

let dusitThaniPattaya = Hotel(
    name: "Dusit Thani Pattaya",
    address: "240/2 Pattaya Beach Road, Pattaya City, Chonburi 20150, Thailand",
    facilities: [
        "Luxury rooms and suites with ocean or garden views",
        "Outdoor pools with beachfront access",
        "Full-service spa and wellness center",
        "Multiple dining options",
        "Meeting and banquet facilities"
    ]
)

let capeDaraPattaya = Hotel(
    name: "Cape Dara Resort, Pattaya",
    address: "256 Dara Beach, Soi 20, Pattaya-Naklua Road, Pattaya City, Chonburi 20150, Thailand",
    facilities: [
        "Oceanfront rooms and suites with private balconies",
        "Infinity pools and private beach access",
        "Full-service spa and wellness center",
        "Multiple dining options and a rooftop bar",
        "Meeting and event spaces with panoramic ocean views"
    ]
)

        let fourSeasonsKohSamui = Hotel(
            name: "Four Seasons Resort, Koh Samui",
            address: "219 Moo 5, Ang Thong, Koh Samui, Surat Thani 84140, Thailand",
            facilities: [
                "Private villas with infinity pools and ocean views",
                "Private beach access",
                "Full-service spa with outdoor treatment salas",
                "Multiple dining options, including beachfront restaurants",
                "Water sports, Muay Thai ring, and yoga sessions"
            ]
        )

        let wKohSamui = Hotel(
            name: "W Koh Samui",
            address: "4/1 Moo 1 Tambol Maenam, Koh Samui, Surat Thani 84330, Thailand",
            facilities: [
                "Private pool villas with ocean or garden views",
                "Private beach with water sports activities",
                "Multiple dining options, including a rooftop bar",
                "Luxury spa and fitness center",
                "Exclusive WET Deck with DJ performances"
            ]
        )

        let banyanTreeKohSamui = Hotel(
            name: "Banyan Tree Samui",
            address: "99/9 Moo 4, Maret, Koh Samui, Surat Thani 84310, Thailand",
            facilities: [
                "Private pool villas with panoramic ocean views",
                "Award-winning spa with rainforest-themed treatments",
                "Multiple dining options with oceanfront seating",
                "Private beach access and infinity pools",
                "Kids’ club, yoga classes, and fitness center"
            ]
        )

        let sixSensesSamui = Hotel(
            name: "Six Senses Samui",
            address: "9/10 Moo 5, Baan Plai Laem, Koh Samui, Surat Thani 84320, Thailand",
            facilities: [
                "Luxury villas with private pools and sea views",
                "Private beach access and infinity pool",
                "Spa with traditional Thai and wellness treatments",
                "Dining options featuring organic and local cuisine",
                "Yoga, meditation, and water activities"
            ]
        )

        let vannaBelleKohSamui = Hotel(
            name: "Vana Belle, a Luxury Collection Resort, Koh Samui",
            address: "9/99 Moo 3, Chaweng Noi Beach, Bophut, Koh Samui, Surat Thani 84320, Thailand",
            facilities: [
                "Luxury suites and villas with private pools",
                "Direct access to Chaweng Noi Beach",
                "Full-service spa and wellness center",
                "Multiple dining options serving local and international cuisine",
                "Outdoor pool, fitness center, and water sports"
            ]
        )
