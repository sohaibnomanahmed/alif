import 'package:gsheets/gsheets.dart';

class GSheetsAPi {
  static const _credentials = r'''{
  "type": "service_account",
  "project_id": "alif-399011",
  "private_key_id": "6c895f86c7e09c8e8b503c79b3fe5a1954aac494",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDEfAFXo11kRNLy\n0DuTa9ziN0aCehQQp5Ml5EJO3vVYj6AIUeZjd4vdkUaOEBX3/UOnpNdVA35Y2xvH\nYyydFL+fWsjS9uMMxSJ1THcpOCJsuBJNLFWzBiRBlUlO0MMy9jeD64cc4ZZaki6C\nvJs2zEfqfSm1xrFxqGrTXnZr9B6OqvWPk6c4+VTuM6o9oKl9bTMYyCC0ANDI20JF\nHssYTMrJeCY+hLVWxMr+gJ9MCG2wPG/b8gXXX35HssadAYR/06EF8XzDY0PE8Ip1\n2x0+4FaVUmmk6uv3NxQee8n1pIHgDJQJNb/wmiXfHFe8yahDjAxMvXYPZjxwZ5sV\nrSkcQqAhAgMBAAECggEAOIYqBrG3DMDl5Ld15BesICHhtWh0PERRBx4O20y1zSfo\nVGxnOGcsQ+3mm7jR8RkZbPF1hv3ty5cg+y+zJm9RHwFJc7NVpxdRLeh1AVUmRhuA\nHFZsQwe5x2owgC17cj41w0wu/uaA0AZsveyPRGjpKXKfXK1P39AhBzSOIclFPyo6\ng0mCyorj7Ffx5g/DZV32KL+J6p30hDWsA+1dfHB9yWf9XYm/SzO6WsPUdZsdA7TL\neuixJO8yiQAf5tllBAu2AVayVSRCI4QuUaqdhxVkJLiopaHYvSCI8e3zi2cgZRXu\n0aZAUaXsN6nqqL4a1okNTInL8UIjtZCwO/l6nqyBbwKBgQD7Jwxp0v6Z7sQ6/QFp\nkuvf+inoShlZnhgqtgsQZx0jD2PV49Ux2128E9qbW3F1jL8tqMdqZCWWWcD7zxcI\nghd5H7nk7qVkGL4R/Et8UsNoLBCdW8TztDzWb/oZUyTm4OyLDJcL6fYOKavAp+sY\nssfI8RMFFveaDtbrTryqZyc/awKBgQDIRtcJ9nUsiXtP976kuhmlh95A90i0i748\nFVk3wiqNrZqWOK8N4WA7/zXgEskv8r7Yr7EBXGVzxv4koC4Q1pJlFTIT9ASspDA4\nBTVzsmK4mTfy26OGJjb7nBiBYkwsXSTpOdEWE6jMofkvLXaJJdahT/yxTdbNIT7r\nm6fLhmp9owKBgQCHehDgJMjiEEIZ79CLOo2yTCe+/fmetgEjSP++4WB+QRcBkdy3\nADYX9j2+AB274yhdYOXxJgSAjfnj21n5ZPN0iwCj1Xex/wbIfOfbMGnoD50GxTIA\npAENS2oFrywAvuPaPfhcnN/109SqH+pZcFcEtcYkwLbfi5GzbM2ovewV8QKBgQCl\naJSL3uiRmw6kUjo7NJSf+SIfx9xdeRjp6Lvh6FRa5SnKrhAuR5jClJp7cSiGmFb1\nAc4QEK6du5kEyOKi94S7RZExl5UQvR4x9mNaJdeRHMJvquVYk1FP53D50ySUc21b\nzmuYby43rALw6vx+cyjb3AMYsPAaRT4BO3KPDnn/PwKBgQCmAz2hQe7A82mYJ6FY\nMhwiXRzrkPoJKWo25xef/UfIrjN0ASfotMa0InvMYvFOK1NJxK5Az3sY0kf6A6Nx\naNnkXrkT4Sh97vCyMauKcNZlcPSYVgppFQ1iXHtLfuJ8UBiIOTC5zSlyd8rD5Isv\nEHd97LzlApFT221P3V1z07EhRQ==\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheet@alif-399011.iam.gserviceaccount.com",
  "client_id": "116823334444079134611",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheet%40alif-399011.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';
  static const _spreadSheetId = '1wDc9LkX7VyPFeVsPMHOlosPhu52xKhL8VkpmKf4KWOs';
  static final _gsheet = GSheets(_credentials);
  static Worksheet? _messagesSheet;
  static Worksheet? _attendeSheet;

  static Future init() async {
    final spreadSheet = await _gsheet.spreadsheet(_spreadSheetId);
    _messagesSheet = await _getWorkSheet(spreadSheet, title: 'meldinger');
    _attendeSheet = await _getWorkSheet(spreadSheet, title: 'kurs');
  }

  static Future<Worksheet> _getWorkSheet(Spreadsheet spreadSheet,
      {required String title}) async {
    try {
      return await spreadSheet.addWorksheet(title);
    } catch (e) {
      return spreadSheet.worksheetByTitle(title)!;
    }
  }

  static Future insertMessage(List<String> rowList) async {
    _messagesSheet?.values.appendRow(rowList);
  }

  static Future insertAttende(List<String> rowList) async {
    _attendeSheet?.values.appendRow(rowList);
  }
}
