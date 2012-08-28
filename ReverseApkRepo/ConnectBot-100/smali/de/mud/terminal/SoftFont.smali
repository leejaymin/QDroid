.class public Lde/mud/terminal/SoftFont;
.super Ljava/lang/Object;
.source "SoftFont.java"


# static fields
.field private static final SF_BITMAP:C = '\u0000'

.field private static final SF_DATA:C = '\u0004'

.field private static final SF_FILLRECT:C = '\u0001'

.field private static final SF_HEIGHT:C = '\u0002'

.field private static final SF_TYPE:C = '\u0003'

.field private static final SF_WIDTH:C = '\u0001'

.field private static fontdata:[[C


# instance fields
.field font:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v7, 0x6

    const/4 v6, 0x7

    const/16 v5, 0x8

    .line 56
    const/16 v0, 0x60

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 58
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 59
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    .line 60
    const/16 v3, 0x81

    aput-char v3, v2, v8

    .line 61
    const/16 v3, 0xa5

    aput-char v3, v2, v7

    .line 62
    const/16 v3, 0x81

    aput-char v3, v2, v6

    .line 63
    const/16 v3, 0xbd

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 64
    const/16 v4, 0x99

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 65
    const/16 v4, 0x81

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 66
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 67
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v9, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 68
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    .line 69
    const/16 v3, 0xff

    aput-char v3, v2, v8

    .line 70
    const/16 v3, 0xdb

    aput-char v3, v2, v7

    .line 71
    const/16 v3, 0xff

    aput-char v3, v2, v6

    .line 72
    const/16 v3, 0xc3

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 73
    const/16 v4, 0xe7

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 74
    const/16 v4, 0xff

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 75
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    .line 76
    const/16 v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    aput-char v5, v1, v2

    aput-char v5, v1, v9

    const/4 v2, 0x4

    .line 77
    const/16 v3, 0x6c

    aput-char v3, v1, v2

    .line 78
    const/16 v2, 0xfe

    aput-char v2, v1, v8

    .line 79
    const/16 v2, 0xfe

    aput-char v2, v1, v7

    .line 80
    const/16 v2, 0xfe

    aput-char v2, v1, v6

    .line 81
    const/16 v2, 0x7c

    aput-char v2, v1, v5

    const/16 v2, 0x9

    .line 82
    const/16 v3, 0x38

    aput-char v3, v1, v2

    const/16 v2, 0xa

    .line 83
    const/16 v3, 0x10

    aput-char v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x3

    .line 85
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 86
    const/16 v4, 0x10

    aput-char v4, v2, v3

    .line 87
    const/16 v3, 0x38

    aput-char v3, v2, v8

    .line 88
    const/16 v3, 0x7c

    aput-char v3, v2, v7

    .line 89
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 90
    const/16 v3, 0x7c

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 91
    const/16 v4, 0x38

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 92
    const/16 v4, 0x10

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 94
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v8, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 95
    const/16 v4, 0x38

    aput-char v4, v2, v3

    .line 96
    const/16 v3, 0x7c

    aput-char v3, v2, v8

    .line 97
    const/16 v3, 0x38

    aput-char v3, v2, v7

    .line 98
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 99
    const/16 v3, 0xfe

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 100
    const/16 v4, 0xd6

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 101
    const/16 v4, 0x10

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 102
    const/16 v4, 0x38

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    .line 103
    const/16 v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v7, v1, v2

    const/4 v2, 0x1

    aput-char v5, v1, v2

    aput-char v5, v1, v9

    const/4 v2, 0x4

    .line 104
    const/16 v3, 0x10

    aput-char v3, v1, v2

    .line 105
    const/16 v2, 0x38

    aput-char v2, v1, v8

    .line 106
    const/16 v2, 0x7c

    aput-char v2, v1, v7

    .line 107
    const/16 v2, 0xfe

    aput-char v2, v1, v6

    .line 108
    const/16 v2, 0xfe

    aput-char v2, v1, v5

    const/16 v2, 0x9

    .line 109
    const/16 v3, 0x7c

    aput-char v3, v1, v2

    const/16 v2, 0xa

    .line 110
    const/16 v3, 0x10

    aput-char v3, v1, v2

    const/16 v2, 0xb

    .line 111
    const/16 v3, 0x38

    aput-char v3, v1, v2

    aput-object v1, v0, v8

    .line 112
    const/16 v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x2666

    aput-char v3, v1, v2

    const/4 v2, 0x1

    aput-char v5, v1, v2

    aput-char v5, v1, v9

    .line 115
    const/16 v2, 0x18

    aput-char v2, v1, v7

    .line 116
    const/16 v2, 0x3c

    aput-char v2, v1, v6

    .line 117
    const/16 v2, 0x3c

    aput-char v2, v1, v5

    const/16 v2, 0x9

    .line 118
    const/16 v3, 0x18

    aput-char v3, v1, v2

    aput-object v1, v0, v7

    .line 121
    const/16 v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v6, v1, v2

    const/4 v2, 0x1

    aput-char v5, v1, v2

    aput-char v5, v1, v9

    .line 124
    const/16 v2, 0x18

    aput-char v2, v1, v7

    .line 125
    const/16 v2, 0x3c

    aput-char v2, v1, v6

    .line 126
    const/16 v2, 0x3c

    aput-char v2, v1, v5

    const/16 v2, 0x9

    .line 127
    const/16 v3, 0x18

    aput-char v3, v1, v2

    aput-object v1, v0, v6

    .line 130
    const/16 v1, 0xc

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char v5, v1, v2

    const/4 v2, 0x1

    aput-char v5, v1, v2

    aput-char v5, v1, v9

    const/4 v2, 0x4

    .line 131
    const/16 v3, 0xff

    aput-char v3, v1, v2

    .line 132
    const/16 v2, 0xff

    aput-char v2, v1, v8

    .line 133
    const/16 v2, 0xe7

    aput-char v2, v1, v7

    .line 134
    const/16 v2, 0xc3

    aput-char v2, v1, v6

    .line 135
    const/16 v2, 0xc3

    aput-char v2, v1, v5

    const/16 v2, 0x9

    .line 136
    const/16 v3, 0xe7

    aput-char v3, v1, v2

    const/16 v2, 0xa

    .line 137
    const/16 v3, 0xff

    aput-char v3, v1, v2

    const/16 v2, 0xb

    .line 138
    const/16 v3, 0xff

    aput-char v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x9

    .line 139
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x9

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 141
    const/16 v3, 0x3c

    aput-char v3, v2, v8

    .line 142
    const/16 v3, 0x66

    aput-char v3, v2, v7

    .line 143
    const/16 v3, 0x42

    aput-char v3, v2, v6

    .line 144
    const/16 v3, 0x42

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 145
    const/16 v4, 0x66

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 146
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 148
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xa

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 149
    const/16 v4, 0xff

    aput-char v4, v2, v3

    .line 150
    const/16 v3, 0xc3

    aput-char v3, v2, v8

    .line 151
    const/16 v3, 0x99

    aput-char v3, v2, v7

    .line 152
    const/16 v3, 0xbd

    aput-char v3, v2, v6

    .line 153
    const/16 v3, 0xbd

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 154
    const/16 v4, 0x99

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 155
    const/16 v4, 0xc3

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 156
    const/16 v4, 0xff

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 157
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xb

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 158
    const/16 v4, 0xf

    aput-char v4, v2, v3

    .line 159
    aput-char v6, v2, v8

    .line 160
    const/16 v3, 0xf

    aput-char v3, v2, v7

    .line 161
    const/16 v3, 0x7d

    aput-char v3, v2, v6

    .line 162
    const/16 v3, 0xcc

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 163
    const/16 v4, 0xcc

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 164
    const/16 v4, 0xcc

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 165
    const/16 v4, 0x78

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 166
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xc

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 167
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    .line 168
    const/16 v3, 0x66

    aput-char v3, v2, v8

    .line 169
    const/16 v3, 0x66

    aput-char v3, v2, v7

    .line 170
    const/16 v3, 0x66

    aput-char v3, v2, v6

    .line 171
    const/16 v3, 0x3c

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 172
    const/16 v4, 0x18

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 173
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 174
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 175
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xd

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 176
    const/16 v4, 0x3f

    aput-char v4, v2, v3

    .line 177
    const/16 v3, 0x33

    aput-char v3, v2, v8

    .line 178
    const/16 v3, 0x3f

    aput-char v3, v2, v7

    .line 179
    const/16 v3, 0x30

    aput-char v3, v2, v6

    .line 180
    const/16 v3, 0x30

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 181
    const/16 v4, 0x70

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 182
    const/16 v4, 0xf0

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 183
    const/16 v4, 0xe0

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 184
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 185
    const/16 v4, 0x7f

    aput-char v4, v2, v3

    .line 186
    const/16 v3, 0x63

    aput-char v3, v2, v8

    .line 187
    const/16 v3, 0x7f

    aput-char v3, v2, v7

    .line 188
    const/16 v3, 0x63

    aput-char v3, v2, v6

    .line 189
    const/16 v3, 0x63

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 190
    const/16 v4, 0x67

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 191
    const/16 v4, 0xe6

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 192
    const/16 v4, 0xc0

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 193
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 194
    const/16 v4, 0x18

    aput-char v4, v2, v3

    .line 195
    const/16 v3, 0xdb

    aput-char v3, v2, v8

    .line 196
    const/16 v3, 0x3c

    aput-char v3, v2, v7

    .line 197
    const/16 v3, 0xe7

    aput-char v3, v2, v6

    .line 198
    const/16 v3, 0xe7

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 199
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 200
    const/16 v4, 0xdb

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 201
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 202
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x10

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 203
    const/16 v4, 0x80

    aput-char v4, v2, v3

    .line 204
    const/16 v3, 0xe0

    aput-char v3, v2, v8

    .line 205
    const/16 v3, 0xf8

    aput-char v3, v2, v7

    .line 206
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 207
    const/16 v3, 0xf8

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 208
    const/16 v4, 0xe0

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 209
    const/16 v4, 0x80

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 211
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x11

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 212
    aput-char v9, v2, v3

    .line 213
    const/16 v3, 0xe

    aput-char v3, v2, v8

    .line 214
    const/16 v3, 0x3e

    aput-char v3, v2, v7

    .line 215
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 216
    const/16 v3, 0x3e

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 217
    const/16 v4, 0xe

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 218
    aput-char v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 220
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x12

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 221
    const/16 v4, 0x18

    aput-char v4, v2, v3

    .line 222
    const/16 v3, 0x3c

    aput-char v3, v2, v8

    .line 223
    const/16 v3, 0x7e

    aput-char v3, v2, v7

    .line 224
    const/16 v3, 0x18

    aput-char v3, v2, v6

    .line 225
    const/16 v3, 0x18

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 226
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 227
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 228
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 229
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x13

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 230
    const/16 v4, 0x66

    aput-char v4, v2, v3

    .line 231
    const/16 v3, 0x66

    aput-char v3, v2, v8

    .line 232
    const/16 v3, 0x66

    aput-char v3, v2, v7

    .line 233
    const/16 v3, 0x66

    aput-char v3, v2, v6

    .line 234
    const/16 v3, 0x66

    aput-char v3, v2, v5

    const/16 v3, 0xa

    .line 236
    const/16 v4, 0x66

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 238
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x14

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 239
    const/16 v4, 0x7f

    aput-char v4, v2, v3

    .line 240
    const/16 v3, 0xdb

    aput-char v3, v2, v8

    .line 241
    const/16 v3, 0xdb

    aput-char v3, v2, v7

    .line 242
    const/16 v3, 0x7b

    aput-char v3, v2, v6

    .line 243
    const/16 v3, 0x1b

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 244
    const/16 v4, 0x1b

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 245
    const/16 v4, 0x1b

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 247
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x15

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 248
    const/16 v4, 0x3e

    aput-char v4, v2, v3

    .line 249
    const/16 v3, 0x61

    aput-char v3, v2, v8

    .line 250
    const/16 v3, 0x3c

    aput-char v3, v2, v7

    .line 251
    const/16 v3, 0x66

    aput-char v3, v2, v6

    .line 252
    const/16 v3, 0x66

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 253
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 254
    const/16 v4, 0x86

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 255
    const/16 v4, 0x7c

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 256
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x16

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 261
    const/16 v3, 0x7e

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 262
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 263
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 265
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x17

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 266
    const/16 v4, 0x18

    aput-char v4, v2, v3

    .line 267
    const/16 v3, 0x3c

    aput-char v3, v2, v8

    .line 268
    const/16 v3, 0x7e

    aput-char v3, v2, v7

    .line 269
    const/16 v3, 0x18

    aput-char v3, v2, v6

    .line 270
    const/16 v3, 0x7e

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 271
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 272
    const/16 v4, 0x18

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 273
    const/16 v4, 0xff

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 274
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x18

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 275
    const/16 v4, 0x18

    aput-char v4, v2, v3

    .line 276
    const/16 v3, 0x3c

    aput-char v3, v2, v8

    .line 277
    const/16 v3, 0x7e

    aput-char v3, v2, v7

    .line 278
    const/16 v3, 0x18

    aput-char v3, v2, v6

    .line 279
    const/16 v3, 0x18

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 280
    const/16 v4, 0x18

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 281
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 283
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 284
    const/16 v4, 0x18

    aput-char v4, v2, v3

    .line 285
    const/16 v3, 0x18

    aput-char v3, v2, v8

    .line 286
    const/16 v3, 0x18

    aput-char v3, v2, v7

    .line 287
    const/16 v3, 0x18

    aput-char v3, v2, v6

    .line 288
    const/16 v3, 0x7e

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 289
    const/16 v4, 0x3c

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 290
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 292
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1a

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 294
    const/16 v3, 0x18

    aput-char v3, v2, v8

    .line 295
    const/16 v3, 0xc

    aput-char v3, v2, v7

    .line 296
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 297
    const/16 v3, 0xc

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 298
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 301
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1b

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 303
    const/16 v3, 0x30

    aput-char v3, v2, v8

    .line 304
    const/16 v3, 0x60

    aput-char v3, v2, v7

    .line 305
    const/16 v3, 0xfe

    aput-char v3, v2, v6

    .line 306
    const/16 v3, 0x60

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 307
    const/16 v4, 0x30

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 310
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 313
    const/16 v3, 0xc0

    aput-char v3, v2, v7

    .line 314
    const/16 v3, 0xc0

    aput-char v3, v2, v6

    .line 315
    const/16 v3, 0xc0

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 316
    const/16 v4, 0xfe

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 319
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1d

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 321
    const/16 v3, 0x24

    aput-char v3, v2, v8

    .line 322
    const/16 v3, 0x66

    aput-char v3, v2, v7

    .line 323
    const/16 v3, 0xff

    aput-char v3, v2, v6

    .line 324
    const/16 v3, 0x66

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 325
    const/16 v4, 0x24

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 328
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1e

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 330
    const/16 v3, 0x18

    aput-char v3, v2, v8

    .line 331
    const/16 v3, 0x3c

    aput-char v3, v2, v7

    .line 332
    const/16 v3, 0x7e

    aput-char v3, v2, v6

    .line 333
    const/16 v3, 0xff

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 334
    const/16 v4, 0xff

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 337
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x1f

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 339
    const/16 v3, 0xff

    aput-char v3, v2, v8

    .line 340
    const/16 v3, 0xff

    aput-char v3, v2, v7

    .line 341
    const/16 v3, 0x7e

    aput-char v3, v2, v6

    .line 342
    const/16 v3, 0x3c

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 343
    const/16 v4, 0x18

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 346
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x7f

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 348
    const/16 v3, 0x10

    aput-char v3, v2, v8

    .line 349
    const/16 v3, 0x38

    aput-char v3, v2, v7

    .line 350
    const/16 v3, 0x6c

    aput-char v3, v2, v6

    .line 351
    const/16 v3, 0xc6

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 352
    const/16 v4, 0xc6

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 353
    const/16 v4, 0xfe

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 355
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2591

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 356
    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 357
    const/16 v3, 0x88

    aput-char v3, v2, v8

    .line 358
    const/16 v3, 0x22

    aput-char v3, v2, v7

    .line 359
    const/16 v3, 0x88

    aput-char v3, v2, v6

    .line 360
    const/16 v3, 0x22

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 361
    const/16 v4, 0x88

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 362
    const/16 v4, 0x22

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 363
    const/16 v4, 0x88

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 364
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2592

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 365
    const/16 v4, 0x55

    aput-char v4, v2, v3

    .line 366
    const/16 v3, 0xaa

    aput-char v3, v2, v8

    .line 367
    const/16 v3, 0x55

    aput-char v3, v2, v7

    .line 368
    const/16 v3, 0xaa

    aput-char v3, v2, v6

    .line 369
    const/16 v3, 0x55

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 370
    const/16 v4, 0xaa

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 371
    const/16 v4, 0x55

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 372
    const/16 v4, 0xaa

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 373
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2593

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 374
    const/16 v4, 0x77

    aput-char v4, v2, v3

    .line 375
    const/16 v3, 0xdd

    aput-char v3, v2, v8

    .line 376
    const/16 v3, 0x77

    aput-char v3, v2, v7

    .line 377
    const/16 v3, 0xdd

    aput-char v3, v2, v6

    .line 378
    const/16 v3, 0x77

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 379
    const/16 v4, 0xdd

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 380
    const/16 v4, 0x77

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 381
    const/16 v4, 0xdd

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 382
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x221a

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 383
    const/16 v4, 0x78

    aput-char v4, v2, v3

    .line 384
    const/16 v3, 0xc

    aput-char v3, v2, v8

    .line 385
    const/16 v3, 0x18

    aput-char v3, v2, v7

    .line 386
    const/16 v3, 0x30

    aput-char v3, v2, v6

    .line 387
    const/16 v3, 0x7c

    aput-char v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 391
    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 394
    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 403
    new-array v2, v6, [C

    fill-array-data v2, :array_1

    .line 406
    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 415
    new-array v2, v8, [C

    fill-array-data v2, :array_2

    .line 416
    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 425
    new-array v2, v8, [C

    fill-array-data v2, :array_3

    .line 426
    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 435
    new-array v2, v7, [C

    fill-array-data v2, :array_4

    .line 437
    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 446
    new-array v2, v6, [C

    fill-array-data v2, :array_5

    .line 449
    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 458
    new-array v2, v6, [C

    fill-array-data v2, :array_6

    .line 461
    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 470
    new-array v2, v6, [C

    fill-array-data v2, :array_7

    .line 473
    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 482
    new-array v2, v6, [C

    fill-array-data v2, :array_8

    .line 485
    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 494
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_9

    .line 499
    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 508
    new-array v2, v7, [C

    fill-array-data v2, :array_a

    .line 510
    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 519
    new-array v2, v5, [C

    fill-array-data v2, :array_b

    .line 523
    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 532
    new-array v2, v5, [C

    fill-array-data v2, :array_c

    .line 536
    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 545
    new-array v2, v6, [C

    fill-array-data v2, :array_d

    .line 548
    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 557
    new-array v2, v6, [C

    fill-array-data v2, :array_e

    .line 560
    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 569
    new-array v2, v7, [C

    fill-array-data v2, :array_f

    .line 571
    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 580
    new-array v2, v7, [C

    fill-array-data v2, :array_10

    .line 582
    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 591
    new-array v2, v7, [C

    fill-array-data v2, :array_11

    .line 593
    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 602
    new-array v2, v7, [C

    fill-array-data v2, :array_12

    .line 604
    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 613
    new-array v2, v7, [C

    fill-array-data v2, :array_13

    .line 615
    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 624
    new-array v2, v8, [C

    fill-array-data v2, :array_14

    .line 625
    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 634
    new-array v2, v8, [C

    fill-array-data v2, :array_15

    .line 635
    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 644
    new-array v2, v8, [C

    fill-array-data v2, :array_16

    .line 645
    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 654
    new-array v2, v7, [C

    fill-array-data v2, :array_17

    .line 656
    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 665
    new-array v2, v6, [C

    fill-array-data v2, :array_18

    .line 668
    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 677
    new-array v2, v6, [C

    fill-array-data v2, :array_19

    .line 680
    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 689
    new-array v2, v5, [C

    fill-array-data v2, :array_1a

    .line 693
    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 702
    new-array v2, v5, [C

    fill-array-data v2, :array_1b

    .line 706
    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 715
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_1c

    .line 720
    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 729
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_1d

    .line 734
    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 743
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_1e

    .line 748
    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 757
    new-array v2, v7, [C

    fill-array-data v2, :array_1f

    .line 759
    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 768
    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_20

    .line 776
    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 785
    new-array v2, v6, [C

    fill-array-data v2, :array_21

    .line 788
    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 797
    new-array v2, v6, [C

    fill-array-data v2, :array_22

    .line 800
    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 809
    new-array v2, v6, [C

    fill-array-data v2, :array_23

    .line 812
    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 821
    new-array v2, v6, [C

    fill-array-data v2, :array_24

    .line 824
    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 833
    new-array v2, v6, [C

    fill-array-data v2, :array_25

    .line 836
    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 845
    new-array v2, v6, [C

    fill-array-data v2, :array_26

    .line 848
    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 857
    new-array v2, v6, [C

    fill-array-data v2, :array_27

    .line 860
    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 869
    new-array v2, v6, [C

    fill-array-data v2, :array_28

    .line 872
    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 881
    new-array v2, v6, [C

    fill-array-data v2, :array_29

    .line 884
    aput-object v2, v0, v1

    const/16 v1, 0x4f

    .line 893
    new-array v2, v6, [C

    fill-array-data v2, :array_2a

    .line 896
    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 905
    new-array v2, v7, [C

    fill-array-data v2, :array_2b

    .line 907
    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 916
    new-array v2, v7, [C

    fill-array-data v2, :array_2c

    .line 918
    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 927
    new-array v2, v8, [C

    fill-array-data v2, :array_2d

    .line 928
    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 937
    new-array v2, v8, [C

    fill-array-data v2, :array_2e

    .line 938
    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 947
    new-array v2, v8, [C

    fill-array-data v2, :array_2f

    .line 948
    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 957
    new-array v2, v8, [C

    fill-array-data v2, :array_30

    .line 958
    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 967
    new-array v2, v8, [C

    fill-array-data v2, :array_31

    .line 968
    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 977
    new-array v2, v6, [C

    fill-array-data v2, :array_32

    .line 980
    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 989
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x221e

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 992
    const/16 v3, 0x7e

    aput-char v3, v2, v7

    .line 993
    const/16 v3, 0xdb

    aput-char v3, v2, v6

    .line 994
    const/16 v3, 0xdb

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 995
    const/16 v4, 0x7e

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 1006
    new-array v2, v6, [C

    fill-array-data v2, :array_33

    .line 1009
    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 1018
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xb2

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 1019
    const/16 v4, 0x70

    aput-char v4, v2, v3

    .line 1020
    const/16 v3, 0x1c

    aput-char v3, v2, v8

    .line 1021
    const/16 v3, 0x38

    aput-char v3, v2, v7

    .line 1022
    const/16 v3, 0x60

    aput-char v3, v2, v6

    .line 1023
    const/16 v3, 0x78

    aput-char v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 1027
    new-array v2, v8, [C

    fill-array-data v2, :array_34

    .line 1028
    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 1037
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2191

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 1038
    aput-char v5, v2, v3

    .line 1039
    const/16 v3, 0x1c

    aput-char v3, v2, v8

    .line 1040
    const/16 v3, 0x3e

    aput-char v3, v2, v7

    .line 1041
    const/16 v3, 0x7f

    aput-char v3, v2, v6

    .line 1042
    const/16 v3, 0x1c

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 1043
    const/16 v4, 0x1c

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 1044
    const/16 v4, 0x1c

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 1045
    const/16 v4, 0x1c

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 1046
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2193

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    const/4 v3, 0x4

    .line 1047
    const/16 v4, 0x1c

    aput-char v4, v2, v3

    .line 1048
    const/16 v3, 0x1c

    aput-char v3, v2, v8

    .line 1049
    const/16 v3, 0x1c

    aput-char v3, v2, v7

    .line 1050
    const/16 v3, 0x1c

    aput-char v3, v2, v6

    .line 1051
    const/16 v3, 0x7f

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 1052
    const/16 v4, 0x3e

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 1053
    const/16 v4, 0x1c

    aput-char v4, v2, v3

    const/16 v3, 0xb

    .line 1054
    aput-char v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 1055
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x25ba

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 1057
    const/16 v3, 0x40

    aput-char v3, v2, v8

    .line 1058
    const/16 v3, 0x60

    aput-char v3, v2, v7

    .line 1059
    const/16 v3, 0x7c

    aput-char v3, v2, v6

    .line 1060
    const/16 v3, 0x70

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 1061
    const/16 v4, 0x60

    aput-char v4, v2, v3

    const/16 v3, 0xa

    .line 1062
    const/16 v4, 0x40

    aput-char v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 1064
    const/16 v2, 0xc

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x25c4

    aput-char v4, v2, v3

    const/4 v3, 0x1

    aput-char v5, v2, v3

    aput-char v5, v2, v9

    .line 1066
    aput-char v9, v2, v8

    .line 1067
    aput-char v7, v2, v7

    .line 1068
    const/16 v3, 0x3e

    aput-char v3, v2, v6

    .line 1069
    const/16 v3, 0xe

    aput-char v3, v2, v5

    const/16 v3, 0x9

    .line 1070
    aput-char v7, v2, v3

    const/16 v3, 0xa

    .line 1071
    aput-char v9, v2, v3

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lde/mud/terminal/SoftFont;->fontdata:[[C

    .line 42
    return-void

    .line 391
    :array_0
    .array-data 0x2
        0x20t 0x23t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x31t 0x40t
        0x27t 0x31t
        0x22t 0x61t
    .end array-data

    .line 403
    nop

    :array_1
    .array-data 0x2
        0x21t 0x23t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x27t 0x30t
        0x22t 0x5t
        0x31t 0x17t
    .end array-data

    .line 415
    nop

    :array_2
    .array-data 0x2
        0xa0t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x44t 0x22t
    .end array-data

    .line 425
    nop

    :array_3
    .array-data 0x2
        0x2t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
    .end array-data

    .line 435
    nop

    :array_4
    .array-data 0x2
        0x24t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x31t 0x4t
    .end array-data

    .line 446
    :array_5
    .array-data 0x2
        0x61t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x31t 0x2t
        0x31t 0x4t
    .end array-data

    .line 458
    nop

    :array_6
    .array-data 0x2
        0x62t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x20t
        0x28t 0x50t
        0x21t 0x4t
    .end array-data

    .line 470
    nop

    :array_7
    .array-data 0x2
        0x56t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x71t 0x4t
        0x23t 0x25t
        0x23t 0x55t
    .end array-data

    .line 482
    nop

    :array_8
    .array-data 0x2
        0x55t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x26t 0x32t
        0x31t 0x2t
        0x31t 0x4t
    .end array-data

    .line 494
    nop

    :array_9
    .array-data 0x2
        0x63t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x20t
        0x21t 0x2t
        0x21t 0x4t
        0x24t 0x24t
        0x28t 0x50t
    .end array-data

    .line 508
    nop

    :array_a
    .array-data 0x2
        0x51t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x20t
        0x28t 0x50t
    .end array-data

    .line 519
    :array_b
    .array-data 0x2
        0x57t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x71t 0x2t
        0x25t 0x53t
        0x41t 0x4t
        0x23t 0x25t
    .end array-data

    .line 532
    :array_c
    .array-data 0x2
        0x5dt 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x20t
        0x41t 0x2t
        0x25t 0x50t
        0x51t 0x4t
    .end array-data

    .line 545
    :array_d
    .array-data 0x2
        0x5ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x24t 0x20t
        0x24t 0x50t
        0x71t 0x4t
    .end array-data

    .line 557
    nop

    :array_e
    .array-data 0x2
        0x5bt 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x25t 0x30t
        0x31t 0x2t
        0x31t 0x4t
    .end array-data

    .line 569
    nop

    :array_f
    .array-data 0x2
        0x10t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x51t 0x4t
        0x23t 0x35t
    .end array-data

    .line 580
    :array_10
    .array-data 0x2
        0x14t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x25t 0x30t
        0x31t 0x54t
    .end array-data

    .line 591
    :array_11
    .array-data 0x2
        0x34t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x24t 0x30t
        0x81t 0x4t
    .end array-data

    .line 602
    :array_12
    .array-data 0x2
        0x2ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x4t
        0x23t 0x35t
    .end array-data

    .line 613
    :array_13
    .array-data 0x2
        0x1ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x31t 0x54t
    .end array-data

    .line 624
    :array_14
    .array-data 0x2
        0x0t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x4t
    .end array-data

    .line 634
    nop

    :array_15
    .array-data 0x2
        0x94t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x0t
    .end array-data

    .line 644
    nop

    :array_16
    .array-data 0x2
        0xact 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x7t
    .end array-data

    .line 654
    nop

    :array_17
    .array-data 0x2
        0x3ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x81t 0x4t
    .end array-data

    .line 665
    :array_18
    .array-data 0x2
        0x5et 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x31t 0x52t
        0x31t 0x54t
    .end array-data

    .line 677
    nop

    :array_19
    .array-data 0x2
        0x5ft 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x20t
        0x28t 0x50t
        0x11t 0x74t
    .end array-data

    .line 689
    nop

    :array_1a
    .array-data 0x2
        0x5at 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x25t 0x20t
        0x23t 0x50t
        0x11t 0x72t
        0x41t 0x44t
    .end array-data

    .line 702
    :array_1b
    .array-data 0x2
        0x54t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x61t 0x22t
        0x25t 0x23t
        0x24t 0x54t
        0x11t 0x74t
    .end array-data

    .line 715
    :array_1c
    .array-data 0x2
        0x69t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x20t
        0x41t 0x2t
        0x22t 0x50t
        0x31t 0x52t
        0x81t 0x4t
    .end array-data

    .line 729
    nop

    :array_1d
    .array-data 0x2
        0x66t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x2t
        0x41t 0x4t
        0x23t 0x25t
        0x31t 0x54t
        0x23t 0x55t
    .end array-data

    .line 743
    nop

    :array_1e
    .array-data 0x2
        0x60t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x20t
        0x22t 0x50t
        0x31t 0x52t
        0x31t 0x54t
        0x23t 0x56t
    .end array-data

    .line 757
    nop

    :array_1f
    .array-data 0x2
        0x50t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x2t
        0x81t 0x4t
    .end array-data

    .line 768
    :array_20
    .array-data 0x2
        0x6ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x20t
        0x41t 0x2t
        0x22t 0x50t
        0x31t 0x52t
        0x41t 0x4t
        0x23t 0x25t
        0x31t 0x54t
        0x23t 0x55t
    .end array-data

    .line 785
    :array_21
    .array-data 0x2
        0x67t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x30t
        0x81t 0x2t
        0x81t 0x4t
    .end array-data

    .line 797
    nop

    :array_22
    .array-data 0x2
        0x68t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x24t 0x20t
        0x24t 0x50t
        0x81t 0x4t
    .end array-data

    .line 809
    nop

    :array_23
    .array-data 0x2
        0x64t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x2t
        0x81t 0x4t
        0x23t 0x35t
    .end array-data

    .line 821
    nop

    :array_24
    .array-data 0x2
        0x65t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x4t
        0x23t 0x25t
        0x23t 0x55t
    .end array-data

    .line 833
    nop

    :array_25
    .array-data 0x2
        0x59t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x24t 0x20t
        0x24t 0x50t
        0x61t 0x24t
    .end array-data

    .line 845
    nop

    :array_26
    .array-data 0x2
        0x58t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x25t 0x30t
        0x31t 0x52t
        0x31t 0x54t
    .end array-data

    .line 857
    nop

    :array_27
    .array-data 0x2
        0x52t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x26t 0x32t
        0x31t 0x52t
        0x31t 0x54t
    .end array-data

    .line 869
    nop

    :array_28
    .array-data 0x2
        0x53t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x61t 0x24t
        0x23t 0x25t
        0x23t 0x55t
    .end array-data

    .line 881
    nop

    :array_29
    .array-data 0x2
        0x6bt 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x20t
        0x28t 0x50t
        0x81t 0x4t
    .end array-data

    .line 893
    nop

    :array_2a
    .array-data 0x2
        0x6at 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x28t 0x30t
        0x81t 0x2t
        0x81t 0x4t
    .end array-data

    .line 905
    nop

    :array_2b
    .array-data 0x2
        0x18t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x25t 0x30t
        0x31t 0x4t
    .end array-data

    .line 916
    :array_2c
    .array-data 0x2
        0xct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x51t 0x34t
        0x23t 0x35t
    .end array-data

    .line 927
    :array_2d
    .array-data 0x2
        0x88t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x88t 0x0t
    .end array-data

    .line 937
    nop

    :array_2e
    .array-data 0x2
        0x84t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x84t 0x4t
    .end array-data

    .line 947
    nop

    :array_2f
    .array-data 0x2
        0x8ct 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x48t 0x0t
    .end array-data

    .line 957
    nop

    :array_30
    .array-data 0x2
        0x90t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x48t 0x40t
    .end array-data

    .line 967
    nop

    :array_31
    .array-data 0x2
        0x80t 0x25t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x84t 0x0t
    .end array-data

    .line 977
    nop

    :array_32
    .array-data 0x2
        0x61t 0x22t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x81t 0x20t
        0x81t 0x40t
        0x81t 0x60t
    .end array-data

    .line 1006
    nop

    :array_33
    .array-data 0x2
        0x7ft 0x20t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x41t 0x10t
        0x24t 0x11t
        0x24t 0x41t
    .end array-data

    .line 1027
    nop

    :array_34
    .array-data 0x2
        0x19t 0x22t
        0x8t 0x0t
        0x8t 0x0t
        0x1t 0x0t
        0x22t 0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lde/mud/terminal/SoftFont;->font:Ljava/util/Hashtable;

    .line 1077
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lde/mud/terminal/SoftFont;->fontdata:[[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1079
    return-void

    .line 1078
    :cond_0
    iget-object v1, p0, Lde/mud/terminal/SoftFont;->font:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-char v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public drawChar(Landroid/graphics/Canvas;Landroid/graphics/Paint;CIIII)V
    .locals 23
    .parameter "g"
    .parameter "p"
    .parameter "c"
    .parameter "x"
    .parameter "y"
    .parameter "cw"
    .parameter "ch"

    .prologue
    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/SoftFont;->font:Ljava/util/Hashtable;

    move-object v4, v0

    new-instance v5, Ljava/lang/Integer;

    move-object v0, v5

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1097
    .local v10, Ientry:Ljava/lang/Object;
    if-nez v10, :cond_1

    .line 1144
    .end local v10           #Ientry:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1099
    .restart local v10       #Ientry:Ljava/lang/Object;
    :cond_1
    check-cast v10, Ljava/lang/Integer;

    .end local v10           #Ientry:Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1100
    .local v15, entry:I
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    const/4 v5, 0x1

    aget-char v17, v4, v5

    .line 1101
    .local v17, fontwidth:I
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    const/4 v5, 0x2

    aget-char v16, v4, v5

    .line 1103
    .local v16, fontheight:I
    move/from16 v0, p6

    int-to-double v0, v0

    move-wide v4, v0

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide v6, v0

    div-double v13, v4, v6

    .line 1104
    .local v13, dw:D
    move/from16 v0, p7

    int-to-double v0, v0

    move-wide v4, v0

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v4, v6

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide v6, v0

    div-double v11, v4, v6

    .line 1106
    .local v11, dh:D
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    const/4 v5, 0x3

    aget-char v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1108
    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1109
    const/16 v18, 0x0

    .local v18, h:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1110
    const/16 v20, 0x0

    .local v20, w:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 1109
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1112
    :cond_2
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    add-int/lit8 v5, v18, 0x4

    aget-char v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x7

    sub-int v6, v6, v20

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 1114
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v4, v0

    mul-double/2addr v4, v13

    double-to-int v4, v4

    add-int v4, v4, p4

    int-to-float v4, v4

    .line 1115
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v5, v0

    mul-double/2addr v5, v11

    double-to-int v5, v5

    add-int v5, v5, p5

    int-to-float v5, v5

    .line 1113
    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1110
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1123
    .end local v18           #h:I
    .end local v20           #w:I
    :pswitch_1
    const/16 v19, 0x4

    .line 1124
    .local v19, i:I
    :goto_3
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    array-length v4, v4

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_0

    .line 1127
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    aget-char v4, v4, v19

    const v5, 0xf000

    and-int/2addr v4, v5

    shr-int/lit8 v20, v4, 0xc

    .line 1128
    .restart local v20       #w:I
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    aget-char v4, v4, v19

    and-int/lit16 v4, v4, 0xf00

    shr-int/lit8 v18, v4, 0x8

    .line 1129
    .restart local v18       #h:I
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    aget-char v4, v4, v19

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v22, v4, 0x4

    .line 1130
    .local v22, xw:I
    sget-object v4, Lde/mud/terminal/SoftFont;->fontdata:[[C

    aget-object v4, v4, v15

    aget-char v4, v4, v19

    and-int/lit8 v21, v4, 0xf

    .line 1132
    .local v21, xh:I
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v4, v0

    mul-double/2addr v4, v13

    double-to-int v4, v4

    add-int v4, v4, p4

    int-to-float v5, v4

    .line 1133
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v6, v0

    mul-double/2addr v6, v11

    double-to-int v4, v6

    add-int v4, v4, p5

    int-to-float v6, v4

    .line 1134
    add-int v4, v20, v22

    int-to-double v7, v4

    mul-double/2addr v7, v13

    double-to-int v4, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v7, v0

    mul-double/2addr v7, v13

    double-to-int v7, v7

    sub-int/2addr v4, v7

    int-to-float v7, v4

    .line 1135
    add-int v4, v18, v21

    int-to-double v8, v4

    mul-double/2addr v8, v11

    double-to-int v4, v8

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v8, v0

    mul-double/2addr v8, v11

    double-to-int v8, v8

    sub-int/2addr v4, v8

    int-to-float v8, v4

    move-object/from16 v4, p1

    move-object/from16 v9, p2

    .line 1131
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1138
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public inSoftFont(C)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 1084
    iget-object v1, p0, Lde/mud/terminal/SoftFont;->font:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 1085
    .local v0, insoftfont:Z
    :goto_0
    if-nez v0, :cond_0

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    .line 1086
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in softfont"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1088
    :cond_0
    return v0

    .line 1084
    .end local v0           #insoftfont:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
