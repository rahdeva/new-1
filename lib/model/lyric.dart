class Lyric {
    Duration timeStamp;
    String words;

    Lyric({
        required this.timeStamp,
        required this.words,
    });

    factory Lyric.fromJson(Map<String, dynamic> json) {
        return Lyric(
            timeStamp: _parseDuration(json["timeStamp"]),
            words: json["words"],
        );
    }

    Map<String, dynamic> toJson() => {
        "timeStamp": _durationToString(timeStamp),
        "words": words,
    };

    static Duration _parseDuration(String timeStamp) {
        List<String> parts = timeStamp.split(':');
        int hours = int.parse(parts[0]);
        int minutes = int.parse(parts[1]);
        int seconds = int.parse(parts[2]);
        return Duration(hours: hours, minutes: minutes, seconds: seconds);
    }

    static String _durationToString(Duration duration) {
        String twoDigits(int n) => n.toString().padLeft(2, '0');
        String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
        String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
        return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
    }
}
