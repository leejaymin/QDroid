.class public abstract Lde/mud/terminal/vt320;
.super Lde/mud/terminal/VDUBuffer;
.source "vt320.java"

# interfaces
.implements Lde/mud/terminal/VDUInput;


# static fields
.field private static final CSI:C = '\u009b'

.field private static final DCS:C = '\u0090'

.field private static DECSPECIAL:[C = null

.field private static final ESC:C = '\u001b'

.field private static final HTS:C = '\u0088'

.field public static final ID:Ljava/lang/String; = "$Id: vt320.java 507 2005-10-25 10:14:52Z marcus $"

.field private static final IND:C = '\u0084'

.field public static final KEY_ADD:I = 0x2a

.field public static final KEY_ALT:I = 0x1d

.field public static final KEY_BACK_SPACE:I = 0x16

.field public static final KEY_CAPS_LOCK:I = 0x1a

.field public static final KEY_CONTROL:I = 0x1c

.field public static final KEY_DECIMAL:I = 0x29

.field public static final KEY_DELETE:I = 0x15

.field public static final KEY_DOWN:I = 0xf

.field public static final KEY_END:I = 0x18

.field public static final KEY_ENTER:I = 0x1e

.field public static final KEY_ESCAPE:I = 0x2b

.field public static final KEY_F1:I = 0x2

.field public static final KEY_F10:I = 0xb

.field public static final KEY_F11:I = 0xc

.field public static final KEY_F12:I = 0xd

.field public static final KEY_F2:I = 0x3

.field public static final KEY_F3:I = 0x4

.field public static final KEY_F4:I = 0x5

.field public static final KEY_F5:I = 0x6

.field public static final KEY_F6:I = 0x7

.field public static final KEY_F7:I = 0x8

.field public static final KEY_F8:I = 0x9

.field public static final KEY_F9:I = 0xa

.field public static final KEY_HOME:I = 0x17

.field public static final KEY_INSERT:I = 0x14

.field public static final KEY_LEFT:I = 0x10

.field public static final KEY_NUMPAD0:I = 0x1f

.field public static final KEY_NUMPAD1:I = 0x20

.field public static final KEY_NUMPAD2:I = 0x21

.field public static final KEY_NUMPAD3:I = 0x22

.field public static final KEY_NUMPAD4:I = 0x23

.field public static final KEY_NUMPAD5:I = 0x24

.field public static final KEY_NUMPAD6:I = 0x25

.field public static final KEY_NUMPAD7:I = 0x26

.field public static final KEY_NUMPAD8:I = 0x27

.field public static final KEY_NUMPAD9:I = 0x28

.field public static final KEY_NUM_LOCK:I = 0x19

.field public static final KEY_PAGE_DOWN:I = 0x12

.field public static final KEY_PAGE_UP:I = 0x13

.field public static final KEY_PAUSE:I = 0x1

.field public static final KEY_RIGHT:I = 0x11

.field public static final KEY_SHIFT:I = 0x1b

.field public static final KEY_UP:I = 0xe

.field private static final NEL:C = '\u0085'

.field private static final OSC:C = '\u009d'

.field private static final RI:C = '\u008d'

.field private static final SS2:C = '\u008e'

.field private static final SS3:C = '\u008f'

.field private static final TSTATE_CSI:I = 0x2

.field private static final TSTATE_CSI_DOLLAR:I = 0xb

.field private static final TSTATE_CSI_EQUAL:I = 0x11

.field private static final TSTATE_CSI_EX:I = 0xc

.field private static final TSTATE_CSI_TICKS:I = 0x10

.field private static final TSTATE_DATA:I = 0x0

.field private static final TSTATE_DCEQ:I = 0x4

.field private static final TSTATE_DCS:I = 0x3

.field private static final TSTATE_ESC:I = 0x1

.field private static final TSTATE_ESCSPACE:I = 0xd

.field private static final TSTATE_ESCSQUARE:I = 0x5

.field private static final TSTATE_OSC:I = 0x6

.field private static final TSTATE_SETG0:I = 0x7

.field private static final TSTATE_SETG1:I = 0x8

.field private static final TSTATE_SETG2:I = 0x9

.field private static final TSTATE_SETG3:I = 0xa

.field private static final TSTATE_VT52X:I = 0xe

.field private static final TSTATE_VT52Y:I = 0xf

.field private static final debug:I = 0x0

.field private static final scoansi_acs:Ljava/lang/String; = "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

.field private static final unimap:[C


# instance fields
.field private BackSpace:[Ljava/lang/String;

.field C:I

.field private DCEvar:I

.field private DCEvars:[I

.field private Do:Ljava/lang/String;

.field private Escape:[Ljava/lang/String;

.field private Find:Ljava/lang/String;

.field private FunctionKey:[Ljava/lang/String;

.field private FunctionKeyAlt:[Ljava/lang/String;

.field private FunctionKeyCtrl:[Ljava/lang/String;

.field private FunctionKeyShift:[Ljava/lang/String;

.field private Help:Ljava/lang/String;

.field private Insert:[Ljava/lang/String;

.field private KPComma:Ljava/lang/String;

.field private KPEnter:Ljava/lang/String;

.field private KPMinus:Ljava/lang/String;

.field private KPPeriod:Ljava/lang/String;

.field private KeyDown:[Ljava/lang/String;

.field private KeyEnd:[Ljava/lang/String;

.field private KeyHome:[Ljava/lang/String;

.field private KeyLeft:[Ljava/lang/String;

.field private KeyRight:[Ljava/lang/String;

.field private KeyUp:[Ljava/lang/String;

.field private NUMDot:[Ljava/lang/String;

.field private NUMPlus:[Ljava/lang/String;

.field private NextScn:[Ljava/lang/String;

.field private Numpad:[Ljava/lang/String;

.field private PF1:Ljava/lang/String;

.field private PF2:Ljava/lang/String;

.field private PF3:Ljava/lang/String;

.field private PF4:Ljava/lang/String;

.field private PrevScn:[Ljava/lang/String;

.field R:I

.field private Remove:[Ljava/lang/String;

.field Sa:I

.field Sbm:I

.field Sc:I

.field private Select:Ljava/lang/String;

.field Sgl:C

.field Sgr:C

.field Sgx:[C

.field Sr:I

.field Stm:I

.field private TabKey:[Ljava/lang/String;

.field private Tabs:[B

.field private answerBack:Ljava/lang/String;

.field attributes:I

.field capslock:Z

.field private dcs:Ljava/lang/String;

.field gl:C

.field gr:C

.field gx:[C

.field insertmode:I

.field keypadmode:Z

.field lastwaslf:I

.field private localecho:Z

.field mousebut:B

.field mouserpt:I

.field moveoutsidemargins:Z

.field normalcursor:I

.field numlock:Z

.field onegl:I

.field private osc:Ljava/lang/String;

.field output8bit:Z

.field sendcrlf:Z

.field statusmode:I

.field private term_state:I

.field private terminalID:Ljava/lang/String;

.field usedcharsets:Z

.field useibmcharset:Z

.field private vms:Z

.field vt52mode:Z

.field wraparound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v3, 0x20

    .line 597
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    .line 1076
    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 1096
    aput-char v1, v0, v1

    .line 1097
    aput-char v2, v0, v2

    .line 1098
    aput-char v4, v0, v4

    .line 1099
    aput-char v5, v0, v5

    const/4 v1, 0x5

    .line 1100
    const/4 v2, 0x5

    aput-char v2, v0, v1

    const/4 v1, 0x6

    .line 1101
    const/4 v2, 0x6

    aput-char v2, v0, v1

    const/4 v1, 0x7

    .line 1102
    const/4 v2, 0x7

    aput-char v2, v0, v1

    const/16 v1, 0x8

    .line 1103
    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    .line 1104
    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xa

    .line 1105
    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xb

    .line 1106
    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0xc

    .line 1107
    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0xd

    .line 1108
    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 1109
    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0xf

    .line 1110
    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 1111
    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0x11

    .line 1112
    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x12

    .line 1113
    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x13

    .line 1114
    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0x14

    .line 1115
    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0x15

    .line 1116
    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x16

    .line 1117
    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x17

    .line 1118
    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x18

    .line 1119
    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x19

    .line 1120
    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    .line 1121
    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    .line 1122
    const/16 v2, 0x1b

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    .line 1123
    const/16 v2, 0x1c

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    .line 1124
    const/16 v2, 0x1d

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    .line 1125
    const/16 v2, 0x1e

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    .line 1126
    const/16 v2, 0x1f

    aput-char v2, v0, v1

    .line 1127
    aput-char v3, v0, v3

    const/16 v1, 0x21

    .line 1128
    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0x22

    .line 1129
    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x23

    .line 1130
    const/16 v2, 0x23

    aput-char v2, v0, v1

    const/16 v1, 0x24

    .line 1131
    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x25

    .line 1132
    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/16 v1, 0x26

    .line 1133
    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/16 v1, 0x27

    .line 1134
    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x28

    .line 1135
    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x29

    .line 1136
    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    .line 1137
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    .line 1138
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    .line 1139
    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    .line 1140
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    .line 1141
    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    .line 1142
    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x30

    .line 1143
    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    .line 1144
    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x32

    .line 1145
    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x33

    .line 1146
    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x34

    .line 1147
    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    .line 1148
    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x36

    .line 1149
    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x37

    .line 1150
    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    .line 1151
    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x39

    .line 1152
    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    .line 1153
    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    .line 1154
    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    .line 1155
    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    .line 1156
    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    .line 1157
    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    .line 1158
    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x40

    .line 1159
    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0x41

    .line 1160
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x42

    .line 1161
    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0x43

    .line 1162
    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x44

    .line 1163
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x45

    .line 1164
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x46

    .line 1165
    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x47

    .line 1166
    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x48

    .line 1167
    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x49

    .line 1168
    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    .line 1169
    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    .line 1170
    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    .line 1171
    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    .line 1172
    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    .line 1173
    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x4f

    .line 1174
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x50

    .line 1175
    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x51

    .line 1176
    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x52

    .line 1177
    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x53

    .line 1178
    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x54

    .line 1179
    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x55

    .line 1180
    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x56

    .line 1181
    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x57

    .line 1182
    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x58

    .line 1183
    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x59

    .line 1184
    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    .line 1185
    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    .line 1186
    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    .line 1187
    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x5d

    .line 1188
    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x5e

    .line 1189
    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0x5f

    .line 1190
    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x60

    .line 1191
    const/16 v2, 0x60

    aput-char v2, v0, v1

    const/16 v1, 0x61

    .line 1192
    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x62

    .line 1193
    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x63

    .line 1194
    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x64

    .line 1195
    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x65

    .line 1196
    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x66

    .line 1197
    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x67

    .line 1198
    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x68

    .line 1199
    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x69

    .line 1200
    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x6a

    .line 1201
    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    .line 1202
    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    .line 1203
    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    .line 1204
    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    .line 1205
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    .line 1206
    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x70

    .line 1207
    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x71

    .line 1208
    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    .line 1209
    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x73

    .line 1210
    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x74

    .line 1211
    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x75

    .line 1212
    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x76

    .line 1213
    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x77

    .line 1214
    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x78

    .line 1215
    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x79

    .line 1216
    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x7a

    .line 1217
    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    .line 1218
    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    .line 1219
    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0x7d

    .line 1220
    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x7e

    .line 1221
    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    .line 1222
    const/16 v2, 0x7f

    aput-char v2, v0, v1

    const/16 v1, 0x80

    .line 1223
    const/16 v2, 0xc7

    aput-char v2, v0, v1

    const/16 v1, 0x81

    .line 1224
    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x82

    .line 1225
    const/16 v2, 0xe9

    aput-char v2, v0, v1

    const/16 v1, 0x83

    .line 1226
    const/16 v2, 0xe2

    aput-char v2, v0, v1

    const/16 v1, 0x84

    .line 1227
    const/16 v2, 0xe4

    aput-char v2, v0, v1

    const/16 v1, 0x85

    .line 1228
    const/16 v2, 0xe0

    aput-char v2, v0, v1

    const/16 v1, 0x86

    .line 1229
    const/16 v2, 0xe5

    aput-char v2, v0, v1

    const/16 v1, 0x87

    .line 1230
    const/16 v2, 0xe7

    aput-char v2, v0, v1

    const/16 v1, 0x88

    .line 1231
    const/16 v2, 0xea

    aput-char v2, v0, v1

    const/16 v1, 0x89

    .line 1232
    const/16 v2, 0xeb

    aput-char v2, v0, v1

    const/16 v1, 0x8a

    .line 1233
    const/16 v2, 0xe8

    aput-char v2, v0, v1

    const/16 v1, 0x8b

    .line 1234
    const/16 v2, 0xef

    aput-char v2, v0, v1

    const/16 v1, 0x8c

    .line 1235
    const/16 v2, 0xee

    aput-char v2, v0, v1

    const/16 v1, 0x8d

    .line 1236
    const/16 v2, 0xec

    aput-char v2, v0, v1

    const/16 v1, 0x8e

    .line 1237
    const/16 v2, 0xc4

    aput-char v2, v0, v1

    const/16 v1, 0x8f

    .line 1238
    const/16 v2, 0xc5

    aput-char v2, v0, v1

    const/16 v1, 0x90

    .line 1239
    const/16 v2, 0xc9

    aput-char v2, v0, v1

    const/16 v1, 0x91

    .line 1240
    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x92

    .line 1241
    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0x93

    .line 1242
    const/16 v2, 0xf4

    aput-char v2, v0, v1

    const/16 v1, 0x94

    .line 1243
    const/16 v2, 0xf6

    aput-char v2, v0, v1

    const/16 v1, 0x95

    .line 1244
    const/16 v2, 0xf2

    aput-char v2, v0, v1

    const/16 v1, 0x96

    .line 1245
    const/16 v2, 0xfb

    aput-char v2, v0, v1

    const/16 v1, 0x97

    .line 1246
    const/16 v2, 0xf9

    aput-char v2, v0, v1

    const/16 v1, 0x98

    .line 1247
    const/16 v2, 0xff

    aput-char v2, v0, v1

    const/16 v1, 0x99

    .line 1248
    const/16 v2, 0xd6

    aput-char v2, v0, v1

    const/16 v1, 0x9a

    .line 1249
    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x9b

    .line 1250
    const/16 v2, 0xa2

    aput-char v2, v0, v1

    const/16 v1, 0x9c

    .line 1251
    const/16 v2, 0xa3

    aput-char v2, v0, v1

    const/16 v1, 0x9d

    .line 1252
    const/16 v2, 0xa5

    aput-char v2, v0, v1

    const/16 v1, 0x9e

    .line 1253
    const/16 v2, 0x20a7

    aput-char v2, v0, v1

    const/16 v1, 0x9f

    .line 1254
    const/16 v2, 0x192

    aput-char v2, v0, v1

    const/16 v1, 0xa0

    .line 1255
    const/16 v2, 0xe1

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    .line 1256
    const/16 v2, 0xed

    aput-char v2, v0, v1

    const/16 v1, 0xa2

    .line 1257
    const/16 v2, 0xf3

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    .line 1258
    const/16 v2, 0xfa

    aput-char v2, v0, v1

    const/16 v1, 0xa4

    .line 1259
    const/16 v2, 0xf1

    aput-char v2, v0, v1

    const/16 v1, 0xa5

    .line 1260
    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const/16 v1, 0xa6

    .line 1261
    const/16 v2, 0xaa

    aput-char v2, v0, v1

    const/16 v1, 0xa7

    .line 1262
    const/16 v2, 0xba

    aput-char v2, v0, v1

    const/16 v1, 0xa8

    .line 1263
    const/16 v2, 0xbf

    aput-char v2, v0, v1

    const/16 v1, 0xa9

    .line 1264
    const/16 v2, 0x2310

    aput-char v2, v0, v1

    const/16 v1, 0xaa

    .line 1265
    const/16 v2, 0xac

    aput-char v2, v0, v1

    const/16 v1, 0xab

    .line 1266
    const/16 v2, 0xbd

    aput-char v2, v0, v1

    const/16 v1, 0xac

    .line 1267
    const/16 v2, 0xbc

    aput-char v2, v0, v1

    const/16 v1, 0xad

    .line 1268
    const/16 v2, 0xa1

    aput-char v2, v0, v1

    const/16 v1, 0xae

    .line 1269
    const/16 v2, 0xab

    aput-char v2, v0, v1

    const/16 v1, 0xaf

    .line 1270
    const/16 v2, 0xbb

    aput-char v2, v0, v1

    const/16 v1, 0xb0

    .line 1271
    const/16 v2, 0x2591

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    .line 1272
    const/16 v2, 0x2592

    aput-char v2, v0, v1

    const/16 v1, 0xb2

    .line 1273
    const/16 v2, 0x2593

    aput-char v2, v0, v1

    const/16 v1, 0xb3

    .line 1274
    const/16 v2, 0x2502

    aput-char v2, v0, v1

    const/16 v1, 0xb4

    .line 1275
    const/16 v2, 0x2524

    aput-char v2, v0, v1

    const/16 v1, 0xb5

    .line 1276
    const/16 v2, 0x2561

    aput-char v2, v0, v1

    const/16 v1, 0xb6

    .line 1277
    const/16 v2, 0x2562

    aput-char v2, v0, v1

    const/16 v1, 0xb7

    .line 1278
    const/16 v2, 0x2556

    aput-char v2, v0, v1

    const/16 v1, 0xb8

    .line 1279
    const/16 v2, 0x2555

    aput-char v2, v0, v1

    const/16 v1, 0xb9

    .line 1280
    const/16 v2, 0x2563

    aput-char v2, v0, v1

    const/16 v1, 0xba

    .line 1281
    const/16 v2, 0x2551

    aput-char v2, v0, v1

    const/16 v1, 0xbb

    .line 1282
    const/16 v2, 0x2557

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    .line 1283
    const/16 v2, 0x255d

    aput-char v2, v0, v1

    const/16 v1, 0xbd

    .line 1284
    const/16 v2, 0x255c

    aput-char v2, v0, v1

    const/16 v1, 0xbe

    .line 1285
    const/16 v2, 0x255b

    aput-char v2, v0, v1

    const/16 v1, 0xbf

    .line 1286
    const/16 v2, 0x2510

    aput-char v2, v0, v1

    const/16 v1, 0xc0

    .line 1287
    const/16 v2, 0x2514

    aput-char v2, v0, v1

    const/16 v1, 0xc1

    .line 1288
    const/16 v2, 0x2534

    aput-char v2, v0, v1

    const/16 v1, 0xc2

    .line 1289
    const/16 v2, 0x252c

    aput-char v2, v0, v1

    const/16 v1, 0xc3

    .line 1290
    const/16 v2, 0x251c

    aput-char v2, v0, v1

    const/16 v1, 0xc4

    .line 1291
    const/16 v2, 0x2500

    aput-char v2, v0, v1

    const/16 v1, 0xc5

    .line 1292
    const/16 v2, 0x253c

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    .line 1293
    const/16 v2, 0x255e

    aput-char v2, v0, v1

    const/16 v1, 0xc7

    .line 1294
    const/16 v2, 0x255f

    aput-char v2, v0, v1

    const/16 v1, 0xc8

    .line 1295
    const/16 v2, 0x255a

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    .line 1296
    const/16 v2, 0x2554

    aput-char v2, v0, v1

    const/16 v1, 0xca

    .line 1297
    const/16 v2, 0x2569

    aput-char v2, v0, v1

    const/16 v1, 0xcb

    .line 1298
    const/16 v2, 0x2566

    aput-char v2, v0, v1

    const/16 v1, 0xcc

    .line 1299
    const/16 v2, 0x2560

    aput-char v2, v0, v1

    const/16 v1, 0xcd

    .line 1300
    const/16 v2, 0x2550

    aput-char v2, v0, v1

    const/16 v1, 0xce

    .line 1301
    const/16 v2, 0x256c

    aput-char v2, v0, v1

    const/16 v1, 0xcf

    .line 1302
    const/16 v2, 0x2567

    aput-char v2, v0, v1

    const/16 v1, 0xd0

    .line 1303
    const/16 v2, 0x2568

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    .line 1304
    const/16 v2, 0x2564

    aput-char v2, v0, v1

    const/16 v1, 0xd2

    .line 1305
    const/16 v2, 0x2565

    aput-char v2, v0, v1

    const/16 v1, 0xd3

    .line 1306
    const/16 v2, 0x2559

    aput-char v2, v0, v1

    const/16 v1, 0xd4

    .line 1307
    const/16 v2, 0x2558

    aput-char v2, v0, v1

    const/16 v1, 0xd5

    .line 1308
    const/16 v2, 0x2552

    aput-char v2, v0, v1

    const/16 v1, 0xd6

    .line 1309
    const/16 v2, 0x2553

    aput-char v2, v0, v1

    const/16 v1, 0xd7

    .line 1310
    const/16 v2, 0x256b

    aput-char v2, v0, v1

    const/16 v1, 0xd8

    .line 1311
    const/16 v2, 0x256a

    aput-char v2, v0, v1

    const/16 v1, 0xd9

    .line 1312
    const/16 v2, 0x2518

    aput-char v2, v0, v1

    const/16 v1, 0xda

    .line 1313
    const/16 v2, 0x250c

    aput-char v2, v0, v1

    const/16 v1, 0xdb

    .line 1314
    const/16 v2, 0x2588

    aput-char v2, v0, v1

    const/16 v1, 0xdc

    .line 1315
    const/16 v2, 0x2584

    aput-char v2, v0, v1

    const/16 v1, 0xdd

    .line 1316
    const/16 v2, 0x258c

    aput-char v2, v0, v1

    const/16 v1, 0xde

    .line 1317
    const/16 v2, 0x2590

    aput-char v2, v0, v1

    const/16 v1, 0xdf

    .line 1318
    const/16 v2, 0x2580

    aput-char v2, v0, v1

    const/16 v1, 0xe0

    .line 1319
    const/16 v2, 0x3b1

    aput-char v2, v0, v1

    const/16 v1, 0xe1

    .line 1320
    const/16 v2, 0xdf

    aput-char v2, v0, v1

    const/16 v1, 0xe2

    .line 1321
    const/16 v2, 0x393

    aput-char v2, v0, v1

    const/16 v1, 0xe3

    .line 1322
    const/16 v2, 0x3c0

    aput-char v2, v0, v1

    const/16 v1, 0xe4

    .line 1323
    const/16 v2, 0x3a3

    aput-char v2, v0, v1

    const/16 v1, 0xe5

    .line 1324
    const/16 v2, 0x3c3

    aput-char v2, v0, v1

    const/16 v1, 0xe6

    .line 1325
    const/16 v2, 0xb5

    aput-char v2, v0, v1

    const/16 v1, 0xe7

    .line 1326
    const/16 v2, 0x3c4

    aput-char v2, v0, v1

    const/16 v1, 0xe8

    .line 1327
    const/16 v2, 0x3a6

    aput-char v2, v0, v1

    const/16 v1, 0xe9

    .line 1328
    const/16 v2, 0x398

    aput-char v2, v0, v1

    const/16 v1, 0xea

    .line 1329
    const/16 v2, 0x3a9

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    .line 1330
    const/16 v2, 0x3b4

    aput-char v2, v0, v1

    const/16 v1, 0xec

    .line 1331
    const/16 v2, 0x221e

    aput-char v2, v0, v1

    const/16 v1, 0xed

    .line 1332
    const/16 v2, 0x3c6

    aput-char v2, v0, v1

    const/16 v1, 0xee

    .line 1333
    const/16 v2, 0x3b5

    aput-char v2, v0, v1

    const/16 v1, 0xef

    .line 1334
    const/16 v2, 0x2229

    aput-char v2, v0, v1

    const/16 v1, 0xf0

    .line 1335
    const/16 v2, 0x2261

    aput-char v2, v0, v1

    const/16 v1, 0xf1

    .line 1336
    const/16 v2, 0xb1

    aput-char v2, v0, v1

    const/16 v1, 0xf2

    .line 1337
    const/16 v2, 0x2265

    aput-char v2, v0, v1

    const/16 v1, 0xf3

    .line 1338
    const/16 v2, 0x2264

    aput-char v2, v0, v1

    const/16 v1, 0xf4

    .line 1339
    const/16 v2, 0x2320

    aput-char v2, v0, v1

    const/16 v1, 0xf5

    .line 1340
    const/16 v2, 0x2321

    aput-char v2, v0, v1

    const/16 v1, 0xf6

    .line 1341
    const/16 v2, 0xf7

    aput-char v2, v0, v1

    const/16 v1, 0xf7

    .line 1342
    const/16 v2, 0x2248

    aput-char v2, v0, v1

    const/16 v1, 0xf8

    .line 1343
    const/16 v2, 0xb0

    aput-char v2, v0, v1

    const/16 v1, 0xf9

    .line 1344
    const/16 v2, 0x2219

    aput-char v2, v0, v1

    const/16 v1, 0xfa

    .line 1345
    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0xfb

    .line 1346
    const/16 v2, 0x221a

    aput-char v2, v0, v1

    const/16 v1, 0xfc

    .line 1347
    const/16 v2, 0x207f

    aput-char v2, v0, v1

    const/16 v1, 0xfd

    .line 1348
    const/16 v2, 0xb2

    aput-char v2, v0, v1

    const/16 v1, 0xfe

    .line 1349
    const/16 v2, 0x25a0

    aput-char v2, v0, v1

    const/16 v1, 0xff

    .line 1350
    const/16 v2, 0xa0

    aput-char v2, v0, v1

    .line 1076
    sput-object v0, Lde/mud/terminal/vt320;->unimap:[C

    .line 38
    return-void

    .line 597
    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x66t 0x26t
        0x92t 0x25t
        0x9t 0x24t
        0xct 0x24t
        0xdt 0x24t
        0xat 0x24t
        0xbat 0x0t
        0xb1t 0x0t
        0x24t 0x24t
        0xbt 0x24t
        0x18t 0x25t
        0x10t 0x25t
        0xct 0x25t
        0x14t 0x25t
        0x3ct 0x25t
        0x94t 0x25t
        0x80t 0x25t
        0x0t 0x25t
        0xact 0x25t
        0x5ft 0x0t
        0x1ct 0x25t
        0x24t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x2t 0x25t
        0x64t 0x22t
        0x65t 0x22t
        0xb6t 0x0t
        0x60t 0x22t
        0xa3t 0x0t
        0xb7t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 242
    const/16 v0, 0x50

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lde/mud/terminal/vt320;-><init>(II)V

    .line 243
    return-void
.end method

.method public constructor <init>(II)V
    .locals 12
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lde/mud/terminal/VDUBuffer;-><init>(II)V

    .line 318
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->localecho:Z

    .line 471
    const-string v2, "vt320"

    iput-object v2, p0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    .line 472
    const-string v2, "Use Terminal.answerback to set ...\n"

    iput-object v2, p0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    .line 476
    iput v7, p0, Lde/mud/terminal/vt320;->attributes:I

    .line 482
    iput v7, p0, Lde/mud/terminal/vt320;->insertmode:I

    .line 483
    iput v7, p0, Lde/mud/terminal/vt320;->statusmode:I

    .line 484
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->vt52mode:Z

    .line 485
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->keypadmode:Z

    .line 486
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->output8bit:Z

    .line 487
    iput v7, p0, Lde/mud/terminal/vt320;->normalcursor:I

    .line 488
    iput-boolean v9, p0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    .line 489
    iput-boolean v9, p0, Lde/mud/terminal/vt320;->wraparound:Z

    .line 490
    iput-boolean v9, p0, Lde/mud/terminal/vt320;->sendcrlf:Z

    .line 491
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->capslock:Z

    .line 492
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->numlock:Z

    .line 493
    iput v7, p0, Lde/mud/terminal/vt320;->mouserpt:I

    .line 494
    iput-byte v7, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 496
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->useibmcharset:Z

    .line 498
    iput v7, p0, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 499
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->usedcharsets:Z

    .line 582
    new-array v2, v8, [C

    fill-array-data v2, :array_0

    .line 586
    iput-object v2, p0, Lde/mud/terminal/vt320;->gx:[C

    .line 588
    iput-char v7, p0, Lde/mud/terminal/vt320;->gl:C

    .line 589
    iput-char v10, p0, Lde/mud/terminal/vt320;->gr:C

    .line 590
    const/4 v2, -0x1

    iput v2, p0, Lde/mud/terminal/vt320;->onegl:I

    .line 650
    iput v7, p0, Lde/mud/terminal/vt320;->term_state:I

    .line 652
    iput-boolean v7, p0, Lde/mud/terminal/vt320;->vms:Z

    .line 656
    const/16 v2, 0x1e

    new-array v2, v2, [I

    iput-object v2, p0, Lde/mud/terminal/vt320;->DCEvars:[I

    .line 117
    invoke-virtual {p0, v7}, Lde/mud/terminal/vt320;->setVMS(Z)V

    .line 118
    invoke-virtual {p0, v7}, Lde/mud/terminal/vt320;->setIBMCharset(Z)V

    .line 119
    const-string v2, "vt320"

    invoke-virtual {p0, v2}, Lde/mud/terminal/vt320;->setTerminalID(Ljava/lang/String;)V

    .line 120
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lde/mud/terminal/vt320;->setBufferSize(I)V

    .line 123
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getColumns()I

    move-result v1

    .line 124
    .local v1, nw:I
    const/16 v2, 0x84

    if-ge v1, v2, :cond_0

    const/16 v1, 0x84

    .line 125
    :cond_0
    new-array v2, v1, [B

    iput-object v2, p0, Lde/mud/terminal/vt320;->Tabs:[B

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 131
    const-string v2, "\u001bOP"

    iput-object v2, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    .line 132
    const-string v2, "\u001bOQ"

    iput-object v2, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    .line 133
    const-string v2, "\u001bOR"

    iput-object v2, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    .line 134
    const-string v2, "\u001bOS"

    iput-object v2, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    .line 137
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    .line 138
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    .line 139
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    .line 140
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    .line 141
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    .line 142
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    .line 143
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    .line 144
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    .line 145
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    const-string v6, "\u001b[2~"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 147
    iget-object v2, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    const-string v6, "\u001b[3~"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 148
    iget-object v2, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    const-string v6, "\u001b[5~"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 149
    iget-object v2, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    const-string v6, "\u001b[6~"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 150
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    const-string v6, "\u001b[H"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 151
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    const-string v6, "\u001b[F"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 152
    iget-object v2, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    const-string v6, "\u001b"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    .line 153
    iget-boolean v2, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v3, "\n"

    aput-object v3, v2, v9

    .line 155
    iget-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v3, "\u0018"

    aput-object v3, v2, v10

    .line 156
    iget-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v4, "\u007f"

    aput-object v4, v3, v11

    aput-object v4, v2, v7

    .line 162
    :goto_1
    const-string v2, "\u001b[1~"

    iput-object v2, p0, Lde/mud/terminal/vt320;->Find:Ljava/lang/String;

    .line 163
    const-string v2, "\u001b[4~"

    iput-object v2, p0, Lde/mud/terminal/vt320;->Select:Ljava/lang/String;

    .line 164
    const-string v2, "\u001b[28~"

    iput-object v2, p0, Lde/mud/terminal/vt320;->Help:Ljava/lang/String;

    .line 165
    const-string v2, "\u001b[29~"

    iput-object v2, p0, Lde/mud/terminal/vt320;->Do:Ljava/lang/String;

    .line 167
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v7

    .line 169
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    aput-object v3, v2, v9

    .line 170
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    aput-object v3, v2, v10

    .line 171
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    aput-object v3, v2, v11

    .line 172
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    aput-object v3, v2, v8

    .line 174
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "\u001b[15~"

    aput-object v4, v2, v3

    .line 175
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "\u001b[17~"

    aput-object v4, v2, v3

    .line 176
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "\u001b[18~"

    aput-object v4, v2, v3

    .line 177
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "\u001b[19~"

    aput-object v4, v2, v3

    .line 178
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "\u001b[20~"

    aput-object v4, v2, v3

    .line 179
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xa

    const-string v4, "\u001b[21~"

    aput-object v4, v2, v3

    .line 180
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xb

    const-string v4, "\u001b[23~"

    aput-object v4, v2, v3

    .line 181
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xc

    const-string v4, "\u001b[24~"

    aput-object v4, v2, v3

    .line 182
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xd

    const-string v4, "\u001b[25~"

    aput-object v4, v2, v3

    .line 183
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xe

    const-string v4, "\u001b[26~"

    aput-object v4, v2, v3

    .line 184
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0xf

    iget-object v4, p0, Lde/mud/terminal/vt320;->Help:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 185
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x10

    iget-object v4, p0, Lde/mud/terminal/vt320;->Do:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 186
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x11

    const-string v4, "\u001b[31~"

    aput-object v4, v2, v3

    .line 187
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x12

    const-string v4, "\u001b[32~"

    aput-object v4, v2, v3

    .line 188
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x13

    const-string v4, "\u001b[33~"

    aput-object v4, v2, v3

    .line 189
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v3, 0x14

    const-string v4, "\u001b[34~"

    aput-object v4, v2, v3

    .line 191
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    .line 192
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    .line 193
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    .line 200
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const/16 v3, 0xf

    iget-object v4, p0, Lde/mud/terminal/vt320;->Find:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 201
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const/16 v3, 0x10

    iget-object v4, p0, Lde/mud/terminal/vt320;->Select:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 204
    iget-object v2, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v3, "\t"

    aput-object v3, v2, v7

    .line 205
    iget-object v2, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v3, "\u001bOP\t"

    aput-object v3, v2, v9

    .line 206
    iget-object v2, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v11

    aput-object v4, v2, v10

    .line 208
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    const-string v3, "\u001b[A"

    aput-object v3, v2, v7

    .line 210
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    const-string v3, "\u001b[B"

    aput-object v3, v2, v7

    .line 212
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    const-string v3, "\u001b[C"

    aput-object v3, v2, v7

    .line 214
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    const-string v3, "\u001b[D"

    aput-object v3, v2, v7

    .line 216
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v3, "\u001bOp"

    aput-object v3, v2, v7

    .line 218
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v3, "\u001bOq"

    aput-object v3, v2, v9

    .line 219
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v3, "\u001bOr"

    aput-object v3, v2, v10

    .line 220
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v3, "\u001bOs"

    aput-object v3, v2, v11

    .line 221
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v3, "\u001bOt"

    aput-object v3, v2, v8

    .line 222
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v4, "\u001bOu"

    aput-object v4, v2, v3

    .line 223
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "\u001bOv"

    aput-object v4, v2, v3

    .line 224
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "\u001bOw"

    aput-object v4, v2, v3

    .line 225
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v3, 0x8

    const-string v4, "\u001bOx"

    aput-object v4, v2, v3

    .line 226
    iget-object v2, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v3, 0x9

    const-string v4, "\u001bOy"

    aput-object v4, v2, v3

    .line 227
    iget-object v2, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->KPMinus:Ljava/lang/String;

    .line 228
    const-string v2, "\u001bOl"

    iput-object v2, p0, Lde/mud/terminal/vt320;->KPComma:Ljava/lang/String;

    .line 229
    const-string v2, "\u001bOn"

    iput-object v2, p0, Lde/mud/terminal/vt320;->KPPeriod:Ljava/lang/String;

    .line 230
    const-string v2, "\u001bOM"

    iput-object v2, p0, Lde/mud/terminal/vt320;->KPEnter:Ljava/lang/String;

    .line 232
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    const-string v3, "+"

    aput-object v3, v2, v7

    .line 234
    new-array v2, v8, [Ljava/lang/String;

    iput-object v2, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    const-string v3, "."

    aput-object v3, v2, v7

    .line 236
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lde/mud/terminal/vt320;->Tabs:[B

    aput-byte v9, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v6, "\u0008"

    aput-object v6, v5, v11

    aput-object v6, v4, v10

    aput-object v6, v3, v9

    aput-object v6, v2, v7

    goto/16 :goto_1

    .line 196
    :cond_3
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 197
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 198
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 582
    nop

    :array_0
    .array-data 0x2
        0x42t 0x0t
        0x30t 0x0t
        0x42t 0x0t
        0x42t 0x0t
    .end array-data
.end method

.method private _SetCursor(II)V
    .locals 4
    .parameter "row"
    .parameter "col"

    .prologue
    const/4 v3, 0x0

    .line 1360
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v0

    .line 1361
    .local v0, maxr:I
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v1

    .line 1363
    .local v1, tm:I
    if-gez p1, :cond_2

    move v2, v3

    :goto_0
    iput v2, p0, Lde/mud/terminal/vt320;->R:I

    .line 1364
    if-gez p2, :cond_3

    move v2, v3

    :goto_1
    iput v2, p0, Lde/mud/terminal/vt320;->C:I

    .line 1366
    iget-boolean v2, p0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    if-nez v2, :cond_0

    .line 1367
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    add-int/2addr v2, v1

    iput v2, p0, Lde/mud/terminal/vt320;->R:I

    .line 1368
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v0

    .line 1370
    :cond_0
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    if-le v2, v0, :cond_1

    iput v0, p0, Lde/mud/terminal/vt320;->R:I

    .line 1371
    :cond_1
    return-void

    :cond_2
    move v2, p1

    .line 1363
    goto :goto_0

    :cond_3
    move v2, p2

    .line 1364
    goto :goto_1
.end method

.method private handle_dcs(Ljava/lang/String;)V
    .locals 3
    .parameter "dcs"

    .prologue
    .line 1069
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DCS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method private handle_osc(Ljava/lang/String;)V
    .locals 3
    .parameter "osc"

    .prologue
    .line 1073
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OSC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method private putChar(CZ)V
    .locals 28
    .parameter "c"
    .parameter "doshowcursor"

    .prologue
    .line 1374
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v9

    .line 1375
    .local v9, rows:I
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getColumns()I

    move-result v8

    .line 1376
    .local v8, columns:I
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v27

    .line 1377
    .local v27, tm:I
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v16

    .line 1379
    .local v16, bm:I
    const/16 v21, 0x0

    .line 1382
    .local v21, mapped:Z
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->markLine(II)V

    .line 1383
    const/16 v5, 0xff

    move/from16 v0, p1

    move v1, v5

    if-le v0, v1, :cond_0

    .line 1390
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->term_state:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 2697
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2700
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-le v5, v8, :cond_2

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2701
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-le v5, v9, :cond_3

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2702
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-gez v5, :cond_4

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2703
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-gez v5, :cond_5

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2704
    :cond_5
    if-eqz p2, :cond_6

    .line 2705
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 2706
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->markLine(II)V

    .line 2707
    return-void

    .line 1395
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/mud/terminal/vt320;->useibmcharset:Z

    move v5, v0

    if-nez v5, :cond_7

    .line 1396
    const/16 v17, 0x1

    .line 1397
    .local v17, doneflag:Z
    sparse-switch p1, :sswitch_data_0

    .line 1439
    const/16 v17, 0x0

    .line 1442
    :goto_1
    if-nez v17, :cond_1

    .line 1444
    .end local v17           #doneflag:Z
    :cond_7
    sparse-switch p1, :sswitch_data_1

    .line 1516
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gl:C

    move/from16 v26, v0

    .line 1518
    .local v26, thisgl:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->onegl:I

    move v5, v0

    if-ltz v5, :cond_8

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->onegl:I

    move/from16 v26, v0

    .line 1520
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->onegl:I

    .line 1522
    :cond_8
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 1523
    const/16 v5, 0x20

    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_a

    .line 1524
    if-eqz p1, :cond_9

    .line 1528
    :cond_9
    if-eqz p1, :cond_1

    .line 1531
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-lt v5, v8, :cond_b

    .line 1532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/mud/terminal/vt320;->wraparound:Z

    move v5, v0

    if-eqz v5, :cond_1c

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ge v5, v6, :cond_1b

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 1537
    :goto_2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1545
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 1546
    const/16 v5, 0x20

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_c

    const/16 v5, 0x7f

    move/from16 v0, p1

    move v1, v5

    if-gt v0, v1, :cond_c

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    aget-char v5, v5, v26

    sparse-switch v5, :sswitch_data_2

    .line 1573
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported GL mapping: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v7, v0

    aget-char v7, v7, v26

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1577
    :cond_c
    :goto_4
    if-nez v21, :cond_d

    const/16 v5, 0x80

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_d

    const/16 v5, 0xff

    move/from16 v0, p1

    move v1, v5

    if-gt v0, v1, :cond_d

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gr:C

    move v6, v0

    aget-char v5, v5, v6

    sparse-switch v5, :sswitch_data_3

    .line 1591
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported GR mapping: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v7, v0

    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gr:C

    move v10, v0

    aget-char v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1596
    :cond_d
    :goto_5
    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/mud/terminal/vt320;->useibmcharset:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 1597
    invoke-virtual/range {p0 .. p1}, Lde/mud/terminal/vt320;->map_cp850_unicode(C)C

    move-result p1

    .line 1600
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->insertmode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 1601
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, p1

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    .line 1614
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1399
    .end local v26           #thisgl:I
    .restart local v17       #doneflag:Z
    :sswitch_0
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    .line 1400
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_1

    .line 1403
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    .line 1404
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_1

    .line 1406
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_1

    .line 1413
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ne v5, v6, :cond_11

    .line 1414
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_1

    .line 1416
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_1

    .line 1421
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ne v5, v6, :cond_13

    .line 1422
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    .line 1425
    :goto_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_1

    .line 1424
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto :goto_7

    .line 1430
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v6, v0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    goto/16 :goto_1

    .line 1435
    :sswitch_5
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    .line 1436
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_1

    .line 1446
    .end local v17           #doneflag:Z
    :sswitch_6
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1449
    :sswitch_7
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1452
    :sswitch_8
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1457
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1460
    :sswitch_9
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1461
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1464
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1468
    :sswitch_b
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v10, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 1469
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1472
    :sswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1473
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-gez v5, :cond_14

    .line 1474
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1475
    :cond_14
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1480
    :cond_15
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1481
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-ge v5, v8, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v6, v0

    aget-byte v5, v5, v6

    if-eqz v5, :cond_15

    .line 1482
    :cond_16
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1485
    :sswitch_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1490
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/mud/terminal/vt320;->vms:Z

    move v5, v0

    if-nez v5, :cond_18

    .line 1491
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    move v5, v0

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    move v5, v0

    move v0, v5

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1493
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 1496
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-lt v5, v6, :cond_1a

    .line 1497
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1499
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1502
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->beep()V

    goto/16 :goto_0

    .line 1506
    :sswitch_11
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1507
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1511
    :sswitch_12
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1512
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1536
    .restart local v26       #thisgl:I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_2

    .line 1540
    :cond_1c
    const/4 v5, 0x1

    sub-int v5, v8, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_3

    .line 1551
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "scoansi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "ansi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1552
    :cond_1d
    const/16 v18, 0x0

    .local v18, i:I
    :goto_8
    const-string v5, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_1f

    .line 1559
    .end local v18           #i:I
    :cond_1e
    :goto_9
    const/16 v5, 0x5f

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_c

    const/16 v5, 0x7e

    move/from16 v0, p1

    move v1, v5

    if-gt v0, v1, :cond_c

    .line 1560
    sget-object v5, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    move/from16 v0, p1

    int-to-short v0, v0

    move v6, v0

    const/16 v7, 0x5f

    sub-int/2addr v6, v7

    aget-char p1, v5, v6

    .line 1561
    .restart local p1
    const/16 v21, 0x1

    .line 1563
    goto/16 :goto_4

    .line 1553
    .restart local v18       #i:I
    :cond_1f
    const-string v5, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_20

    .line 1554
    const-string v5, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    add-int/lit8 v6, v18, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1555
    .restart local p1
    goto :goto_9

    .line 1552
    :cond_20
    add-int/lit8 v18, v18, 0x2

    goto :goto_8

    .line 1565
    .end local v18           #i:I
    :sswitch_14
    and-int/lit8 v5, p1, 0x7f

    or-int/lit16 v5, v5, 0x80

    move v0, v5

    int-to-char v0, v0

    move/from16 p1, v0

    .line 1566
    const/16 v21, 0x1

    .line 1567
    goto/16 :goto_4

    .line 1570
    :sswitch_15
    const/16 v21, 0x1

    .line 1571
    goto/16 :goto_4

    .line 1580
    :sswitch_16
    const/16 v5, 0xdf

    move/from16 v0, p1

    move v1, v5

    if-lt v0, v1, :cond_d

    const/16 v5, 0xfe

    move/from16 v0, p1

    move v1, v5

    if-gt v0, v1, :cond_d

    .line 1581
    sget-object v5, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    const/16 v6, 0xdf

    sub-int v6, p1, v6

    aget-char p1, v5, v6

    .line 1582
    .restart local p1
    const/16 v21, 0x1

    .line 1584
    goto/16 :goto_5

    .line 1588
    :sswitch_17
    const/16 v21, 0x1

    .line 1589
    goto/16 :goto_5

    .line 1603
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, p1

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mud/terminal/vt320;->putChar(IICI)V

    goto/16 :goto_6

    .line 1620
    .end local v26           #thisgl:I
    :pswitch_2
    const/16 v5, 0x20

    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_22

    const/16 v5, 0x1b

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_22

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lde/mud/terminal/vt320;->handle_osc(Ljava/lang/String;)V

    .line 1622
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1626
    :cond_22
    const/16 v5, 0x5c

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_23

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lde/mud/terminal/vt320;->handle_osc(Ljava/lang/String;)V

    .line 1628
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1631
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    goto/16 :goto_0

    .line 1634
    :pswitch_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1635
    packed-switch p1, :pswitch_data_1

    .line 1643
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC <space> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unhandled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1637
    :pswitch_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 1640
    :pswitch_5
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 1647
    :pswitch_6
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1648
    sparse-switch p1, :sswitch_data_4

    .line 1837
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC unknown letter: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1650
    :sswitch_18
    const/16 v5, 0xd

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1653
    :sswitch_19
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1658
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x42

    aput-char v7, v5, v6

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x1

    const/16 v7, 0x30

    aput-char v7, v5, v6

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x2

    const/16 v7, 0x42

    aput-char v7, v5, v6

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x3

    const/16 v7, 0x42

    aput-char v7, v5, v6

    .line 1662
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1663
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gr:C

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getColumns()I

    move-result v24

    .line 1666
    .local v24, nw:I
    const/16 v5, 0x84

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_24

    const/16 v24, 0x84

    .line 1667
    :cond_24
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->Tabs:[B

    .line 1668
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object v5, v0

    const/4 v6, 0x1

    aput-byte v6, v5, v18

    .line 1668
    add-int/lit8 v18, v18, 0x8

    goto :goto_a

    .line 1674
    .end local v24           #nw:I
    .end local v18           #i:I
    :sswitch_1b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1679
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1682
    :sswitch_1c
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    .line 1683
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1686
    :sswitch_1d
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    .line 1687
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1690
    :sswitch_1e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-gez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1694
    :sswitch_1f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 1695
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-le v5, v6, :cond_1

    const/4 v5, 0x1

    sub-int v5, v9, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1698
    :sswitch_20
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1699
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-lt v5, v8, :cond_1

    const/4 v5, 0x1

    sub-int v5, v8, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1702
    :sswitch_21
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1705
    :sswitch_22
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ne v5, v6, :cond_26

    .line 1706
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    .line 1709
    :goto_b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1708
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto :goto_b

    .line 1714
    :sswitch_23
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ne v5, v6, :cond_28

    .line 1715
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1717
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1722
    :sswitch_24
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ge v5, v6, :cond_29

    .line 1723
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    sub-int v5, v9, v5

    const/4 v6, 0x1

    sub-int v14, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    move v13, v8

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 1724
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v8, v6

    if-ge v5, v6, :cond_1

    .line 1725
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    sub-int v13, v8, v5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 1728
    :sswitch_25
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v8, v6

    if-ge v5, v6, :cond_1

    .line 1729
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    sub-int v13, v8, v5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 1732
    :sswitch_26
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC M : R is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tm is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bm is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1733
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_1

    .line 1735
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-le v0, v1, :cond_2a

    .line 1736
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1738
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1748
    :sswitch_27
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-lt v5, v8, :cond_2b

    .line 1749
    const/4 v5, 0x1

    sub-int v5, v8, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1750
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v6, v0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 1753
    :sswitch_28
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1756
    :sswitch_29
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1762
    :sswitch_2a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->keypadmode:Z

    goto/16 :goto_0

    .line 1765
    :sswitch_2b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->vt52mode:Z

    goto/16 :goto_0

    .line 1770
    :sswitch_2c
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->keypadmode:Z

    goto/16 :goto_0

    .line 1773
    :sswitch_2d
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sc:I

    .line 1774
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sr:I

    .line 1775
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gl:C

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->Sgl:C

    .line 1776
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gr:C

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->Sgr:C

    .line 1777
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sa:I

    .line 1778
    const/4 v5, 0x4

    new-array v5, v5, [C

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->Sgx:[C

    .line 1779
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_c
    const/4 v5, 0x4

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_2c

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Stm:I

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sbm:I

    goto/16 :goto_0

    .line 1779
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Sgx:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v6, v0

    aget-char v6, v6, v18

    aput-char v6, v5, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_c

    .line 1786
    .end local v18           #i:I
    :sswitch_2e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sc:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1787
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sr:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 1788
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->Sgl:C

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1789
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->Sgr:C

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gr:C

    .line 1790
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_d
    const/4 v5, 0x4

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_2d

    .line 1791
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Stm:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->setTopMargin(I)V

    .line 1792
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sbm:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->setBottomMargin(I)V

    .line 1793
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sa:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 1790
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Sgx:[C

    move-object v6, v0

    aget-char v6, v6, v18

    aput-char v6, v5, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 1798
    .end local v18           #i:I
    :sswitch_2f
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1799
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1802
    :sswitch_30
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1803
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1806
    :sswitch_31
    const/16 v5, 0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1807
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1810
    :sswitch_32
    const/16 v5, 0xa

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1811
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1814
    :sswitch_33
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gr:C

    .line 1815
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1818
    :sswitch_34
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1819
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1822
    :sswitch_35
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gr:C

    .line 1823
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1826
    :sswitch_36
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 1827
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1830
    :sswitch_37
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gr:C

    .line 1831
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1834
    :sswitch_38
    const/16 v5, 0xf

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1842
    :pswitch_7
    const/16 v5, 0x25

    sub-int v5, p1, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 1843
    const/16 v5, 0xf

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1846
    :pswitch_8
    const/16 v5, 0x25

    sub-int v5, p1, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 1847
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1850
    :pswitch_9
    const/16 v5, 0x30

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2e

    const/16 v5, 0x41

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2e

    const/16 v5, 0x42

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2e

    const/16 v5, 0x3c

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2e

    .line 1851
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC ( "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": G0 char set?  ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1856
    :goto_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1854
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x0

    aput-char p1, v5, v6

    goto :goto_e

    .line 1859
    :pswitch_a
    const/16 v5, 0x30

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2f

    const/16 v5, 0x41

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2f

    const/16 v5, 0x42

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2f

    const/16 v5, 0x3c

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_2f

    .line 1860
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC ) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") :G1 char set?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1865
    :goto_f
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1863
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x1

    aput-char p1, v5, v6

    goto :goto_f

    .line 1868
    :pswitch_b
    const/16 v5, 0x30

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_30

    const/16 v5, 0x41

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_30

    const/16 v5, 0x42

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_30

    const/16 v5, 0x3c

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_30

    .line 1869
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC*:G2 char set?  ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1874
    :goto_10
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1872
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x2

    aput-char p1, v5, v6

    goto :goto_10

    .line 1877
    :pswitch_c
    const/16 v5, 0x30

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_31

    const/16 v5, 0x41

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_31

    const/16 v5, 0x42

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_31

    const/16 v5, 0x3c

    move/from16 v0, p1

    move v1, v5

    if-eq v0, v1, :cond_31

    .line 1878
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC+:G3 char set?  ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1883
    :goto_11
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1881
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object v5, v0

    const/4 v6, 0x3

    aput-char p1, v5, v6

    goto :goto_11

    .line 1886
    :pswitch_d
    packed-switch p1, :pswitch_data_2

    .line 1893
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC # "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1896
    :cond_32
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1888
    :pswitch_e
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_12
    move/from16 v0, v18

    move v1, v8

    if-ge v0, v1, :cond_32

    .line 1889
    const/16 v19, 0x0

    .local v19, j:I
    :goto_13
    move/from16 v0, v19

    move v1, v9

    if-lt v0, v1, :cond_33

    .line 1888
    add-int/lit8 v18, v18, 0x1

    goto :goto_12

    .line 1890
    :cond_33
    const/16 v5, 0x45

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mud/terminal/vt320;->putChar(IICI)V

    .line 1889
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    .line 1899
    .end local v18           #i:I
    .end local v19           #j:I
    :pswitch_f
    const/16 v5, 0x5c

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_34

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lde/mud/terminal/vt320;->handle_dcs(Ljava/lang/String;)V

    .line 1901
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1904
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    goto/16 :goto_0

    .line 1908
    :pswitch_10
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 1909
    sparse-switch p1, :sswitch_data_5

    .line 2094
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", unsupported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1920
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v10, v0

    aget v7, v7, v10

    mul-int/lit8 v7, v7, 0xa

    add-int v7, v7, p1

    const/16 v10, 0x30

    sub-int/2addr v7, v10

    aput v7, v5, v6

    .line 1921
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1924
    :sswitch_3a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1926
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1930
    :sswitch_3b
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s unimplemented!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1934
    :sswitch_3c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "m1ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1936
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_1

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    sparse-switch v5, :sswitch_data_6

    .line 1961
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " r, unimplemented!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1936
    :goto_15
    :sswitch_3d
    add-int/lit8 v18, v18, 0x1

    goto :goto_14

    .line 1939
    :sswitch_3e
    const/16 v5, 0x50

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_15

    .line 1946
    :sswitch_3f
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_15

    .line 1949
    :sswitch_40
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_15

    .line 1958
    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_15

    .line 1969
    .end local v18           #i:I
    :sswitch_42
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_1

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    sparse-switch v5, :sswitch_data_7

    .line 2007
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h, unsupported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1969
    :goto_17
    add-int/lit8 v18, v18, 0x1

    goto :goto_16

    .line 1972
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001bOA"

    aput-object v7, v5, v6

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001bOB"

    aput-object v7, v5, v6

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001bOC"

    aput-object v7, v5, v6

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001bOD"

    aput-object v7, v5, v6

    goto :goto_17

    .line 1978
    :sswitch_44
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->vt52mode:Z

    goto :goto_17

    .line 1981
    :sswitch_45
    const/16 v5, 0x84

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_17

    .line 1984
    :sswitch_46
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_17

    .line 1987
    :sswitch_47
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_17

    .line 1990
    :sswitch_48
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->showCursor(Z)V

    goto :goto_17

    .line 1997
    :sswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_17

    .line 2017
    .end local v18           #i:I
    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    :pswitch_11
    goto/16 :goto_0

    .line 2036
    :sswitch_4b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_1

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    sparse-switch v5, :sswitch_data_8

    .line 2074
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " l, unsupported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2036
    :goto_19
    add-int/lit8 v18, v18, 0x1

    goto :goto_18

    .line 2039
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001b[A"

    aput-object v7, v5, v6

    .line 2040
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001b[B"

    aput-object v7, v5, v6

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001b[C"

    aput-object v7, v5, v6

    .line 2042
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const-string v7, "\u001b[D"

    aput-object v7, v5, v6

    goto :goto_19

    .line 2045
    :sswitch_4d
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->vt52mode:Z

    goto :goto_19

    .line 2048
    :sswitch_4e
    const/16 v5, 0x50

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_19

    .line 2051
    :sswitch_4f
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_19

    .line 2054
    :sswitch_50
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_19

    .line 2057
    :sswitch_51
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->showCursor(Z)V

    goto :goto_19

    .line 2071
    :sswitch_52
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_19

    .line 2082
    .end local v18           #i:I
    :sswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_4

    .line 2089
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ ? "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n, unsupported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2085
    :pswitch_12
    const-string v5, "\u001b[?13n"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    .line 2086
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "ESC[5n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2099
    :pswitch_13
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2100
    packed-switch p1, :pswitch_data_5

    .line 2105
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown character ESC[! character is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2102
    :pswitch_14
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2110
    :pswitch_15
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2111
    packed-switch p1, :pswitch_data_6

    .line 2125
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown ESC [...  \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2113
    :pswitch_16
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Conformance level: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (unsupported),"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x1

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2114
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_35

    .line 2115
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2118
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_36

    .line 2119
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2121
    :cond_36
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2130
    :pswitch_17
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2131
    packed-switch p1, :pswitch_data_7

    .line 2180
    :pswitch_18
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Unknown ESC [ = "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2181
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-le v0, v1, :cond_37

    .line 2183
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2142
    .end local v18           #i:I
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v10, v0

    aget v7, v7, v10

    mul-int/lit8 v7, v7, 0xa

    add-int v7, v7, p1

    const/16 v10, 0x30

    sub-int/2addr v7, v10

    aput v7, v5, v6

    .line 2143
    const/16 v5, 0x11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2146
    :pswitch_1a
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 2148
    const/16 v5, 0x11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2155
    :pswitch_1b
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " F"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2157
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x2

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x2

    .line 2158
    or-int/2addr v5, v6

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x4

    shr-int/lit8 v6, v6, 0x2

    .line 2158
    or-int v23, v5, v6

    .line 2161
    .local v23, newcolor:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    add-int/lit8 v6, v23, 0x1

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2169
    .end local v23           #newcolor:I
    :pswitch_1c
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2171
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e01

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x2

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x2

    .line 2172
    or-int/2addr v5, v6

    .line 2174
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x4

    shr-int/lit8 v6, v6, 0x2

    .line 2172
    or-int v23, v5, v6

    .line 2175
    .restart local v23       #newcolor:I
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    add-int/lit8 v6, v23, 0x1

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2182
    .end local v23           #newcolor:I
    .restart local v18       #i:I
    :cond_37
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    aget v7, v7, v18

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2181
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1a

    .line 2188
    .end local v18           #i:I
    :pswitch_1d
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2189
    packed-switch p1, :pswitch_data_8

    .line 2203
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UNKNOWN Status Display code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", with Pn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2191
    :pswitch_1e
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Active Status Display now "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->statusmode:I

    goto/16 :goto_0

    .line 2200
    :pswitch_1f
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Status Line mode now "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2208
    :pswitch_20
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    .line 2209
    packed-switch p1, :pswitch_data_9

    .line 2692
    :pswitch_21
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ unknown letter:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2211
    :pswitch_22
    const/16 v5, 0x10

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2214
    :pswitch_23
    const/16 v5, 0xb

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2217
    :pswitch_24
    const/16 v5, 0x11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2220
    :pswitch_25
    const/16 v5, 0xc

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2223
    :pswitch_26
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 2225
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2237
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v10, v0

    aget v7, v7, v10

    mul-int/lit8 v7, v7, 0xa

    add-int v7, v7, p1

    const/16 v10, 0x30

    sub-int/2addr v7, v10

    aput v7, v5, v6

    .line 2238
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2241
    :pswitch_28
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v6, v0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 2243
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2248
    :pswitch_29
    const-string v25, ""

    .line 2249
    .local v25, subcode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "vt320"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v25, "63;"

    .line 2250
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "vt220"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v25, "62;"

    .line 2251
    .restart local v25       #subcode:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "vt100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v25, "61;"

    .line 2252
    .restart local v25       #subcode:Ljava/lang/String;
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u001b[?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1;2c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2262
    .end local v25           #subcode:Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_a

    :pswitch_2b
    goto/16 :goto_0

    .line 2267
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v6, v0

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    goto/16 :goto_0

    .line 2264
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getColumns()I

    move-result v5

    new-array v5, v5, [B

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/terminal/vt320;->Tabs:[B

    goto/16 :goto_0

    .line 2274
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_9

    .line 2283
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unsupported: ESC [ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2276
    :sswitch_54
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->insertmode:I

    goto/16 :goto_0

    .line 2279
    :sswitch_55
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Setting CRLF to TRUE"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2280
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->sendcrlf:Z

    goto/16 :goto_0

    .line 2296
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_b

    .line 2310
    :pswitch_30
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " i, unimplemented!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2314
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_a

    .line 2323
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    const/4 v10, 0x0

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " l, unimplemented!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2316
    :sswitch_56
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->insertmode:I

    goto/16 :goto_0

    .line 2319
    :sswitch_57
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Setting CRLF to FALSE"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2320
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->sendcrlf:Z

    goto/16 :goto_0

    .line 2331
    :pswitch_32
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_3b

    .line 2332
    move/from16 v20, v16

    .line 2337
    .local v20, limit:I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_3d

    .line 2338
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2341
    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 2342
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2333
    .end local v20           #limit:I
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-lt v0, v1, :cond_3c

    .line 2334
    move/from16 v20, v27

    .restart local v20       #limit:I
    goto :goto_1b

    .line 2336
    .end local v20           #limit:I
    :cond_3c
    const/16 v20, 0x0

    .restart local v20       #limit:I
    goto :goto_1b

    .line 2340
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto :goto_1c

    .line 2351
    .end local v20           #limit:I
    :pswitch_33
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v27

    if-ge v0, v1, :cond_3e

    .line 2352
    const/4 v5, 0x1

    sub-int v20, v27, v5

    .line 2357
    .restart local v20       #limit:I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_40

    .line 2358
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2361
    :goto_1e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 2362
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2353
    .end local v20           #limit:I
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_3f

    .line 2354
    move/from16 v20, v16

    .restart local v20       #limit:I
    goto :goto_1d

    .line 2356
    .end local v20           #limit:I
    :cond_3f
    const/4 v5, 0x1

    sub-int v20, v9, v5

    .restart local v20       #limit:I
    goto :goto_1d

    .line 2360
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto :goto_1e

    .line 2372
    .end local v20           #limit:I
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_41

    .line 2373
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2376
    :goto_1f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v8, v6

    if-le v5, v6, :cond_1

    .line 2377
    const/4 v5, 0x1

    sub-int v5, v8, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2375
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto :goto_1f

    .line 2382
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2387
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_42

    .line 2388
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2391
    :goto_20
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-gez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2390
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto :goto_20

    .line 2396
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    if-lez v5, :cond_46

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2399
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-gez v5, :cond_45

    .line 2400
    const/4 v5, 0x1

    sub-int v5, v9, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2406
    :cond_43
    :goto_21
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->setBottomMargin(I)V

    .line 2407
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setBottomMargin R="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2408
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    if-lt v5, v6, :cond_44

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2410
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-gez v5, :cond_44

    .line 2411
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2413
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->setTopMargin(I)V

    .line 2414
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setTopMargin R="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2415
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lde/mud/terminal/vt320;->_SetCursor(II)V

    goto/16 :goto_0

    .line 2401
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-lt v5, v9, :cond_43

    .line 2402
    const/4 v5, 0x1

    sub-int v5, v9, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_21

    .line 2405
    :cond_46
    const/4 v5, 0x1

    sub-int v5, v9, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_21

    .line 2420
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2425
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lde/mud/terminal/vt320;->_SetCursor(II)V

    goto/16 :goto_0

    .line 2433
    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2435
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-gez v5, :cond_47

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2436
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-gez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2441
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_48

    .line 2442
    const/4 v5, 0x1

    sub-int v5, v9, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2444
    :cond_48
    const/4 v5, 0x1

    sub-int v5, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2448
    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_49

    .line 2449
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2451
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2456
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_4a

    .line 2457
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2459
    :cond_4a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2464
    :pswitch_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_4b

    .line 2465
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->deleteLine(I)V

    goto/16 :goto_0

    .line 2467
    :cond_4b
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 2468
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lde/mud/terminal/vt320;->deleteLine(I)V

    .line 2467
    add-int/lit8 v18, v18, 0x1

    goto :goto_22

    .line 2474
    .end local v18           #i:I
    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_c

    :pswitch_40
    goto/16 :goto_0

    .line 2477
    :pswitch_41
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v8, v6

    if-ge v5, v6, :cond_1

    .line 2478
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    sub-int v13, v8, v5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2481
    :pswitch_42
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-lez v5, :cond_1

    .line 2482
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v13, v5, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2485
    :pswitch_43
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    move v13, v8

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2491
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_d

    goto/16 :goto_0

    .line 2493
    :pswitch_45
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v9, v6

    if-ge v5, v6, :cond_4c

    .line 2494
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    sub-int v5, v9, v5

    const/4 v6, 0x1

    sub-int v14, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    move v13, v8

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 2495
    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v8, v6

    if-ge v5, v6, :cond_1

    .line 2496
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    sub-int v13, v8, v5

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2499
    :pswitch_46
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    if-lez v5, :cond_4d

    .line 2500
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    move v13, v8

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 2501
    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    if-lez v5, :cond_1

    .line 2502
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/lit8 v13, v5, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2505
    :pswitch_47
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v10, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2514
    :pswitch_48
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 2515
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    const/16 v7, 0x20

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v10, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    .line 2514
    add-int/lit8 v18, v18, 0x1

    goto :goto_23

    .line 2519
    .end local v18           #i:I
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v13, v5, v6

    .line 2522
    .local v13, toerase:I
    if-nez v13, :cond_4e

    .line 2523
    const/4 v13, 0x1

    .line 2524
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    add-int/2addr v5, v13

    if-le v5, v8, :cond_4f

    .line 2525
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    sub-int v13, v8, v5

    .line 2526
    :cond_4f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v12, v0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v15, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2533
    .end local v13           #toerase:I
    :pswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 2534
    :cond_50
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 2535
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lde/mud/terminal/vt320;->deleteChar(II)V

    .line 2534
    add-int/lit8 v18, v18, 0x1

    goto :goto_24

    .line 2538
    .end local v18           #i:I
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_e

    goto/16 :goto_0

    .line 2540
    :pswitch_4c
    const-string v5, "\u001b[0n"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2548
    :pswitch_4d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u001b["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2559
    :pswitch_4e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->C:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sc:I

    .line 2560
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->R:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sr:I

    .line 2561
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->Sa:I

    goto/16 :goto_0

    .line 2566
    :pswitch_4f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sc:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->C:I

    .line 2567
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sr:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    .line 2568
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->Sa:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2575
    :pswitch_50
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    if-nez v5, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_51

    .line 2576
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2577
    :cond_51
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_25
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-gt v0, v1, :cond_1

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    aget v5, v5, v18

    packed-switch v5, :pswitch_data_f

    .line 2682
    :pswitch_51
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ESC [ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v7, v0

    aget v7, v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m unknown..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2577
    :cond_52
    :goto_26
    :pswitch_52
    add-int/lit8 v18, v18, 0x1

    goto :goto_25

    .line 2580
    :pswitch_53
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    if-lez v5, :cond_52

    .line 2581
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "scoansi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2582
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, 0x1fe0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_26

    .line 2584
    :cond_53
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_26

    .line 2589
    :pswitch_54
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2590
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0x9

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_26

    .line 2594
    :pswitch_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "scoansi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move v5, v0

    sub-int v5, v5, v18

    const/4 v6, 0x2

    if-lt v5, v6, :cond_55

    .line 2596
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1fe2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    add-int/lit8 v6, v18, 0x1

    aget v22, v5, v6

    .line 2599
    .local v22, ncolor:I
    and-int/lit8 v5, v22, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_54

    .line 2600
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2601
    :cond_54
    and-int/lit8 v5, v22, 0x1

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v6, v22, 0x2

    or-int/2addr v5, v6

    and-int/lit8 v6, v22, 0x4

    shr-int/lit8 v6, v6, 0x2

    or-int v22, v5, v6

    .line 2602
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    add-int/lit8 v6, v22, 0x1

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v5, v0

    add-int/lit8 v6, v18, 0x2

    aget v22, v5, v6

    .line 2604
    and-int/lit8 v5, v22, 0x1

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v6, v22, 0x2

    or-int/2addr v5, v6

    and-int/lit8 v6, v22, 0x4

    shr-int/lit8 v6, v6, 0x2

    or-int v22, v5, v6

    .line 2605
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    add-int/lit8 v6, v22, 0x1

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2606
    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_26

    .line 2608
    .end local v22           #ncolor:I
    :cond_55
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2612
    :pswitch_56
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2615
    :pswitch_57
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2618
    :pswitch_58
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    or-int/lit8 v5, v5, 0x10

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2625
    :pswitch_59
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 2626
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_26

    .line 2632
    :pswitch_5a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-char v0, v1, Lde/mud/terminal/vt320;->gl:C

    .line 2633
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_26

    .line 2636
    :pswitch_5b
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0xa

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2641
    :pswitch_5c
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0x5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2644
    :pswitch_5d
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0x11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2647
    :pswitch_5e
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2650
    :pswitch_5f
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit8 v5, v5, -0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2660
    :pswitch_60
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2661
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    aget v6, v6, v18

    const/16 v7, 0x1e

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2664
    :pswitch_61
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2674
    :pswitch_62
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e01

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    .line 2675
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object v6, v0

    aget v6, v6, v18

    const/16 v7, 0x28

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 2678
    :pswitch_63
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->attributes:I

    move v5, v0

    and-int/lit16 v5, v5, -0x1e01

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_26

    .line 1390
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_20
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1d
        :pswitch_13
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_15
        :pswitch_17
    .end packed-switch

    .line 1397
    :sswitch_data_0
    .sparse-switch
        0x84 -> :sswitch_2
        0x85 -> :sswitch_3
        0x88 -> :sswitch_4
        0x8d -> :sswitch_1
        0x90 -> :sswitch_5
        0x9d -> :sswitch_0
    .end sparse-switch

    .line 1444
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_a
        0x7 -> :sswitch_10
        0x8 -> :sswitch_c
        0x9 -> :sswitch_d
        0xa -> :sswitch_f
        0xc -> :sswitch_b
        0xd -> :sswitch_e
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x1b -> :sswitch_9
        0x8e -> :sswitch_7
        0x8f -> :sswitch_6
        0x9b -> :sswitch_8
    .end sparse-switch

    .line 1547
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_13
        0x3c -> :sswitch_14
        0x41 -> :sswitch_15
        0x42 -> :sswitch_15
    .end sparse-switch

    .line 1578
    :sswitch_data_3
    .sparse-switch
        0x30 -> :sswitch_16
        0x3c -> :sswitch_17
        0x41 -> :sswitch_17
        0x42 -> :sswitch_17
    .end sparse-switch

    .line 1635
    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1648
    :sswitch_data_4
    .sparse-switch
        0x20 -> :sswitch_18
        0x23 -> :sswitch_19
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_30
        0x2a -> :sswitch_31
        0x2b -> :sswitch_32
        0x37 -> :sswitch_2d
        0x38 -> :sswitch_2e
        0x3c -> :sswitch_2b
        0x3d -> :sswitch_2a
        0x3e -> :sswitch_2c
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1f
        0x43 -> :sswitch_20
        0x44 -> :sswitch_23
        0x45 -> :sswitch_22
        0x48 -> :sswitch_27
        0x49 -> :sswitch_21
        0x4a -> :sswitch_24
        0x4b -> :sswitch_25
        0x4d -> :sswitch_26
        0x4e -> :sswitch_28
        0x4f -> :sswitch_29
        0x50 -> :sswitch_1d
        0x59 -> :sswitch_38
        0x5b -> :sswitch_1b
        0x5d -> :sswitch_1c
        0x63 -> :sswitch_1a
        0x6e -> :sswitch_34
        0x6f -> :sswitch_36
        0x7c -> :sswitch_37
        0x7d -> :sswitch_35
        0x7e -> :sswitch_33
    .end sparse-switch

    .line 1886
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_e
    .end packed-switch

    .line 1909
    :sswitch_data_5
    .sparse-switch
        0x30 -> :sswitch_39
        0x31 -> :sswitch_39
        0x32 -> :sswitch_39
        0x33 -> :sswitch_39
        0x34 -> :sswitch_39
        0x35 -> :sswitch_39
        0x36 -> :sswitch_39
        0x37 -> :sswitch_39
        0x38 -> :sswitch_39
        0x39 -> :sswitch_39
        0x3b -> :sswitch_3a
        0x68 -> :sswitch_42
        0x69 -> :sswitch_4a
        0x6c -> :sswitch_4b
        0x6e -> :sswitch_53
        0x72 -> :sswitch_3c
        0x73 -> :sswitch_3b
    .end sparse-switch

    .line 1937
    :sswitch_data_6
    .sparse-switch
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_3d
        0x6 -> :sswitch_3f
        0x7 -> :sswitch_40
        0x9 -> :sswitch_41
        0xc -> :sswitch_3d
        0x3e8 -> :sswitch_41
        0x3e9 -> :sswitch_41
        0x3ea -> :sswitch_41
        0x3eb -> :sswitch_41
    .end sparse-switch

    .line 1970
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_44
        0x3 -> :sswitch_45
        0x6 -> :sswitch_46
        0x7 -> :sswitch_47
        0x9 -> :sswitch_49
        0x19 -> :sswitch_48
        0x3e8 -> :sswitch_49
        0x3e9 -> :sswitch_49
        0x3ea -> :sswitch_49
        0x3eb -> :sswitch_49
    .end sparse-switch

    .line 2017
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_0
    .end packed-switch

    .line 2037
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_4c
        0x2 -> :sswitch_4d
        0x3 -> :sswitch_4e
        0x6 -> :sswitch_4f
        0x7 -> :sswitch_50
        0x9 -> :sswitch_52
        0x19 -> :sswitch_51
        0x3e8 -> :sswitch_52
        0x3e9 -> :sswitch_52
        0x3ea -> :sswitch_52
        0x3eb -> :sswitch_52
    .end sparse-switch

    .line 2082
    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_12
    .end packed-switch

    .line 2100
    :pswitch_data_5
    .packed-switch 0x1b
        :pswitch_14
    .end packed-switch

    .line 2111
    :pswitch_data_6
    .packed-switch 0x70
        :pswitch_16
    .end packed-switch

    .line 2131
    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 2189
    :pswitch_data_8
    .packed-switch 0x7d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 2209
    :pswitch_data_9
    .packed-switch 0x21
        :pswitch_25
        :pswitch_22
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_28
        :pswitch_21
        :pswitch_24
        :pswitch_21
        :pswitch_26
        :pswitch_48
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_36
        :pswitch_21
        :pswitch_21
        :pswitch_38
        :pswitch_39
        :pswitch_21
        :pswitch_44
        :pswitch_3f
        :pswitch_3c
        :pswitch_3e
        :pswitch_21
        :pswitch_21
        :pswitch_4a
        :pswitch_21
        :pswitch_21
        :pswitch_3b
        :pswitch_3d
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_49
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_29
        :pswitch_35
        :pswitch_21
        :pswitch_3a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2f
        :pswitch_21
        :pswitch_21
        :pswitch_31
        :pswitch_50
        :pswitch_4b
        :pswitch_21
        :pswitch_21
        :pswitch_0
        :pswitch_37
        :pswitch_4e
        :pswitch_21
        :pswitch_4f
    .end packed-switch

    .line 2262
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
    .end packed-switch

    .line 2274
    :sswitch_data_9
    .sparse-switch
        0x4 -> :sswitch_54
        0x14 -> :sswitch_55
    .end sparse-switch

    .line 2296
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2314
    :sswitch_data_a
    .sparse-switch
        0x4 -> :sswitch_56
        0x14 -> :sswitch_57
    .end sparse-switch

    .line 2474
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_41
    .end packed-switch

    .line 2491
    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch

    .line 2538
    :pswitch_data_e
    .packed-switch 0x5
        :pswitch_4c
        :pswitch_4d
    .end packed-switch

    .line 2578
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_51
        :pswitch_56
        :pswitch_52
        :pswitch_51
        :pswitch_57
        :pswitch_58
        :pswitch_51
        :pswitch_59
        :pswitch_5a
        :pswitch_5a
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_5b
        :pswitch_5f
        :pswitch_51
        :pswitch_5e
        :pswitch_52
        :pswitch_51
        :pswitch_5c
        :pswitch_5d
        :pswitch_51
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_51
        :pswitch_61
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_51
        :pswitch_63
    .end packed-switch
.end method

.method static unEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "tmp"

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x1

    .line 666
    const/4 v3, 0x0

    .local v3, idx:I
    const/4 v5, 0x0

    .line 669
    .local v5, oldidx:I
    const-string v0, ""

    .line 670
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 671
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_2

    .line 710
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 711
    .end local v0           #cmd:Ljava/lang/String;
    .local v1, cmd:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 672
    .end local v1           #cmd:Ljava/lang/String;
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v7, v3, v8

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3

    move-object v1, v0

    .restart local v1       #cmd:Ljava/lang/String;
    goto :goto_1

    .line 674
    .end local v1           #cmd:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 697
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_6

    .line 699
    move v2, v3

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 702
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0       #cmd:Ljava/lang/String;
    sub-int v3, v2, v8

    .line 708
    .end local v2           #i:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 676
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u0008"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 679
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u001b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 682
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 685
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 688
    :sswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 691
    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u000b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_3

    .line 694
    :sswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u0012"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .restart local v0       #cmd:Ljava/lang/String;
    goto/16 :goto_3

    .line 700
    .restart local v2       #i:I
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v9, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_4

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 705
    .end local v2           #i:I
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    .local v4, idx:I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v3           #idx:I
    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cmd:Ljava/lang/String;
    move v3, v4

    .restart local v3       #idx:I
    goto/16 :goto_3

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_6
        0x62 -> :sswitch_0
        0x65 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x76 -> :sswitch_5
    .end sparse-switch
.end method

.method private write(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 464
    iget-boolean v0, p0, Lde/mud/terminal/vt320;->localecho:Z

    invoke-direct {p0, p1, v0}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private write(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "s"
    .parameter "doecho"

    .prologue
    const/4 v3, 0x1

    .line 444
    if-nez p1, :cond_0

    move v2, v3

    .line 460
    :goto_0
    return v2

    .line 452
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 453
    .local v0, arr:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 456
    invoke-virtual {p0, v0}, Lde/mud/terminal/vt320;->write([B)V

    .line 458
    if-eqz p2, :cond_1

    .line 459
    invoke-virtual {p0, p1}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 460
    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private writeSpecial(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x1b

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 721
    if-nez p1, :cond_0

    move v0, v4

    .line 741
    :goto_0
    return v0

    .line 723
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 724
    iget-boolean v0, p0, Lde/mud/terminal/vt320;->vt52mode:Z

    if-eqz v0, :cond_4

    .line 725
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-lt v0, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x53

    if-gt v0, v1, :cond_3

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u001b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 736
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 737
    iget-boolean v0, p0, Lde/mud/terminal/vt320;->output8bit:Z

    if-eqz v0, :cond_2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u009b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    .restart local p1
    :cond_2
    invoke-direct {p0, p1, v3}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 728
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u001b?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p1
    goto :goto_1

    .line 731
    :cond_4
    iget-boolean v0, p0, Lde/mud/terminal/vt320;->output8bit:Z

    if-eqz v0, :cond_1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u008f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p1
    goto :goto_1
.end method


# virtual methods
.method public beep()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public getTerminalID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    return-object v0
.end method

.method public keyPressed(ICI)V
    .locals 8
    .parameter "keyCode"
    .parameter "keyChar"
    .parameter "modifiers"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 748
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_4

    move v1, v6

    .line 749
    .local v1, control:Z
    :goto_0
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_5

    move v3, v6

    .line 750
    .local v3, shift:Z
    :goto_1
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_6

    move v0, v6

    .line 756
    .local v0, alt:Z
    :goto_2
    const/4 v4, 0x0

    .line 757
    .local v4, xind:I
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    .line 758
    .local v2, fmap:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 759
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    .line 760
    const/4 v4, 0x1

    .line 762
    :cond_0
    if-eqz v1, :cond_1

    .line 763
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    .line 764
    .restart local v2       #fmap:[Ljava/lang/String;
    const/4 v4, 0x2

    .line 766
    :cond_1
    if-eqz v0, :cond_2

    .line 767
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    .line 768
    .restart local v2       #fmap:[Ljava/lang/String;
    const/4 v4, 0x3

    .line 771
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 869
    :cond_3
    :goto_3
    :pswitch_0
    return-void

    .end local v1           #control:Z
    .end local v3           #shift:Z
    .end local v0           #alt:Z
    .end local v4           #xind:I
    .end local v2           #fmap:[Ljava/lang/String;
    :cond_4
    move v1, v7

    .line 748
    goto :goto_0

    .restart local v1       #control:Z
    :cond_5
    move v3, v7

    .line 749
    goto :goto_1

    .restart local v3       #shift:Z
    :cond_6
    move v0, v7

    .line 750
    goto :goto_2

    .line 773
    .restart local v0       #alt:Z
    .restart local v2       #fmap:[Ljava/lang/String;
    .restart local v4       #xind:I
    :pswitch_1
    if-nez v3, :cond_7

    if-eqz v1, :cond_3

    .line 774
    :cond_7
    const/16 v5, -0xd

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->sendTelnetCommand(B)V

    goto :goto_3

    .line 777
    :pswitch_2
    aget-object v5, v2, v6

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 780
    :pswitch_3
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 783
    :pswitch_4
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 786
    :pswitch_5
    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 789
    :pswitch_6
    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 792
    :pswitch_7
    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 795
    :pswitch_8
    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 798
    :pswitch_9
    const/16 v5, 0x8

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 801
    :pswitch_a
    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 804
    :pswitch_b
    const/16 v5, 0xa

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 807
    :pswitch_c
    const/16 v5, 0xb

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 810
    :pswitch_d
    const/16 v5, 0xc

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 813
    :pswitch_e
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 816
    :pswitch_f
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 819
    :pswitch_10
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 822
    :pswitch_11
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 825
    :pswitch_12
    iget-object v5, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 828
    :pswitch_13
    iget-object v5, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 831
    :pswitch_14
    iget-object v5, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 834
    :pswitch_15
    iget-object v5, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 837
    :pswitch_16
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    .line 838
    iget-boolean v5, p0, Lde/mud/terminal/vt320;->localecho:Z

    if-eqz v5, :cond_3

    .line 839
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    const-string v6, "\u0008"

    if-ne v5, v6, :cond_8

    .line 840
    const-string v5, "\u0008 \u0008"

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 842
    :cond_8
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 847
    :pswitch_17
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 850
    :pswitch_18
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 853
    :pswitch_19
    iget-boolean v5, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    .line 854
    iget-object v5, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    .line 856
    :cond_9
    if-nez v1, :cond_3

    .line 857
    iget-boolean v5, p0, Lde/mud/terminal/vt320;->numlock:Z

    if-eqz v5, :cond_a

    move v5, v7

    :goto_4
    iput-boolean v5, p0, Lde/mud/terminal/vt320;->numlock:Z

    goto/16 :goto_3

    :cond_a
    move v5, v6

    goto :goto_4

    .line 860
    :pswitch_1a
    iget-boolean v5, p0, Lde/mud/terminal/vt320;->capslock:Z

    if-eqz v5, :cond_b

    move v5, v7

    :goto_5
    iput-boolean v5, p0, Lde/mud/terminal/vt320;->capslock:Z

    goto/16 :goto_3

    :cond_b
    move v5, v6

    goto :goto_5

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyTyped(ICI)V
    .locals 10
    .parameter "keyCode"
    .parameter "keyChar"
    .parameter "modifiers"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 881
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1

    move v1, v5

    .line 882
    .local v1, control:Z
    :goto_0
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_2

    move v2, v5

    .line 883
    .local v2, shift:Z
    :goto_1
    and-int/lit8 v4, p3, 0x4

    if-eqz v4, :cond_3

    move v0, v5

    .line 887
    .local v0, alt:Z
    :goto_2
    const/16 v4, 0x9

    if-ne p2, v4, :cond_7

    .line 888
    if-eqz v2, :cond_4

    .line 889
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    .line 1066
    :cond_0
    :goto_3
    return-void

    .end local v1           #control:Z
    .end local v2           #shift:Z
    .end local v0           #alt:Z
    :cond_1
    move v1, v6

    .line 881
    goto :goto_0

    .restart local v1       #control:Z
    :cond_2
    move v2, v6

    .line 882
    goto :goto_1

    .restart local v2       #shift:Z
    :cond_3
    move v0, v6

    .line 883
    goto :goto_2

    .line 891
    .restart local v0       #alt:Z
    :cond_4
    if-eqz v1, :cond_5

    .line 892
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 894
    :cond_5
    if-eqz v0, :cond_6

    .line 895
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 897
    :cond_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 903
    :cond_7
    if-eqz v0, :cond_8

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    or-int/lit16 v5, p2, 0x80

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;)Z

    goto :goto_3

    .line 908
    :cond_8
    const/16 v4, 0x1e

    if-eq p1, v4, :cond_9

    const/16 v4, 0xa

    if-ne p2, v4, :cond_a

    .line 909
    :cond_9
    if-nez v1, :cond_a

    .line 910
    const-string v4, "\r"

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    .line 911
    iget-boolean v4, p0, Lde/mud/terminal/vt320;->localecho:Z

    if-eqz v4, :cond_0

    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto :goto_3

    .line 915
    :cond_a
    const/16 v4, 0xa

    if-ne p1, v4, :cond_b

    if-nez v1, :cond_b

    .line 916
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Sending \\r"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 917
    const-string v4, "\r"

    invoke-direct {p0, v4, v6}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 926
    :cond_b
    iget-boolean v4, p0, Lde/mud/terminal/vt320;->vms:Z

    if-nez v4, :cond_c

    const/16 v4, 0x32

    if-eq p2, v4, :cond_d

    :cond_c
    const/16 v4, 0x20

    if-ne p2, v4, :cond_e

    :cond_d
    if-eqz v1, :cond_e

    .line 927
    const-string v4, "\u0000"

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;)Z

    .line 929
    :cond_e
    iget-boolean v4, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v4, :cond_11

    .line 930
    const/16 v4, 0x7f

    if-ne p2, v4, :cond_10

    if-nez v1, :cond_10

    .line 931
    if-eqz v2, :cond_f

    .line 932
    iget-object v4, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 934
    :cond_f
    iget-object v4, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 936
    :cond_10
    if-eqz v1, :cond_11

    .line 937
    sparse-switch p2, :sswitch_data_0

    .line 1002
    :cond_11
    const/4 v3, 0x0

    .line 1004
    .local v3, xind:I
    if-eqz v2, :cond_12

    .line 1006
    const/4 v3, 0x1

    .line 1008
    :cond_12
    if-eqz v1, :cond_13

    .line 1010
    const/4 v3, 0x2

    .line 1012
    :cond_13
    if-eqz v0, :cond_14

    .line 1014
    const/4 v3, 0x3

    .line 1017
    :cond_14
    const/16 v4, 0x2b

    if-ne p1, v4, :cond_15

    .line 1018
    iget-object v4, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 939
    .end local v3           #xind:I
    :sswitch_0
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 942
    :sswitch_1
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 945
    :sswitch_2
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 948
    :sswitch_3
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 951
    :sswitch_4
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 954
    :sswitch_5
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 957
    :sswitch_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 960
    :sswitch_7
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 963
    :sswitch_8
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 966
    :sswitch_9
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 969
    :sswitch_a
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPPeriod:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 973
    :sswitch_b
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPMinus:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 976
    :sswitch_c
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPComma:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 979
    :sswitch_d
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPEnter:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 982
    :sswitch_e
    iget-object v4, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 985
    :sswitch_f
    iget-object v4, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1022
    .restart local v3       #xind:I
    :cond_15
    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_16

    .line 1023
    packed-switch p1, :pswitch_data_0

    .line 1062
    :cond_16
    if-eq p2, v9, :cond_0

    const/16 v4, 0x7f

    if-eq p2, v4, :cond_0

    const/16 v4, 0xd

    if-eq p2, v4, :cond_0

    const/16 v4, 0xa

    if-eq p2, v4, :cond_0

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1025
    :pswitch_0
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1028
    :pswitch_1
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1031
    :pswitch_2
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1034
    :pswitch_3
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1037
    :pswitch_4
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1040
    :pswitch_5
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1043
    :pswitch_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1046
    :pswitch_7
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1049
    :pswitch_8
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1052
    :pswitch_9
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1055
    :pswitch_a
    iget-object v4, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1058
    :pswitch_b
    iget-object v4, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 937
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_d
        0x1f -> :sswitch_b
        0x2a -> :sswitch_f
        0x2b -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_e
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
    .end sparse-switch

    .line 1023
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public map_cp850_unicode(C)C
    .locals 1
    .parameter "x"

    .prologue
    .line 1354
    const/16 v0, 0x100

    if-lt p1, v0, :cond_0

    move v0, p1

    .line 1356
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lde/mud/terminal/vt320;->unimap:[C

    aget-char v0, v0, p1

    goto :goto_0
.end method

.method public mousePressed(III)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "modifiers"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    iget v3, p0, Lde/mud/terminal/vt320;->mouserpt:I

    if-nez v3, :cond_0

    .line 278
    :goto_0
    return-void

    .line 256
    :cond_0
    move v1, p3

    .line 257
    .local v1, mods:I
    iput-byte v8, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 258
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    iput-byte v5, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 259
    :cond_1
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iput-byte v6, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 260
    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-ne v3, v9, :cond_3

    iput-byte v7, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 263
    :cond_3
    iget v3, p0, Lde/mud/terminal/vt320;->mouserpt:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    .line 264
    iget-byte v3, p0, Lde/mud/terminal/vt320;->mousebut:B

    or-int/lit8 v2, v3, 0x20

    .line 268
    .local v2, mousecode:I
    :goto_1
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 270
    .local v0, b:[B
    const/16 v3, 0x1b

    aput-byte v3, v0, v5

    .line 271
    const/16 v3, 0x5b

    aput-byte v3, v0, v6

    .line 272
    const/16 v3, 0x4d

    aput-byte v3, v0, v7

    .line 273
    int-to-byte v3, v2

    aput-byte v3, v0, v8

    .line 274
    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v9

    .line 275
    const/4 v3, 0x5

    add-int/lit8 v4, p2, 0x20

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 277
    invoke-virtual {p0, v0}, Lde/mud/terminal/vt320;->write([B)V

    goto :goto_0

    .line 266
    .end local v2           #mousecode:I
    .end local v0           #b:[B
    :cond_4
    iget-byte v3, p0, Lde/mud/terminal/vt320;->mousebut:B

    or-int/lit8 v3, v3, 0x20

    and-int/lit8 v4, v1, 0x7

    shl-int/lit8 v4, v4, 0x2

    or-int v2, v3, v4

    .restart local v2       #mousecode:I
    goto :goto_1
.end method

.method public mouseReleased(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "modifiers"

    .prologue
    const/4 v4, 0x0

    .line 288
    iget v2, p0, Lde/mud/terminal/vt320;->mouserpt:I

    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 300
    :cond_0
    iget v2, p0, Lde/mud/terminal/vt320;->mouserpt:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 301
    iget-byte v2, p0, Lde/mud/terminal/vt320;->mousebut:B

    add-int/lit8 v1, v2, 0x20

    .line 305
    .local v1, mousecode:I
    :goto_1
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 306
    .local v0, b:[B
    const/16 v2, 0x1b

    aput-byte v2, v0, v4

    .line 307
    const/4 v2, 0x1

    const/16 v3, 0x5b

    aput-byte v3, v0, v2

    .line 308
    const/4 v2, 0x2

    const/16 v3, 0x4d

    aput-byte v3, v0, v2

    .line 309
    const/4 v2, 0x3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 310
    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x20

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 311
    const/4 v2, 0x5

    add-int/lit8 v3, p2, 0x20

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 312
    invoke-virtual {p0, v0}, Lde/mud/terminal/vt320;->write([B)V

    .line 313
    iput-byte v4, p0, Lde/mud/terminal/vt320;->mousebut:B

    goto :goto_0

    .line 303
    .end local v1           #mousecode:I
    .end local v0           #b:[B
    :cond_1
    const/16 v1, 0x23

    .restart local v1       #mousecode:I
    goto :goto_1
.end method

.method public putString(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, len:I
    if-lez v1, :cond_0

    .line 72
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lde/mud/terminal/vt320;->markLine(II)V

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 77
    iget v2, p0, Lde/mud/terminal/vt320;->C:I

    iget v3, p0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual {p0, v2, v3}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 78
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->redraw()V

    .line 80
    .end local v0           #i:I
    :cond_0
    return-void

    .line 75
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lde/mud/terminal/vt320;->putChar(CZ)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2711
    iget-object v2, p0, Lde/mud/terminal/vt320;->gx:[C

    aput-char v6, v2, v4

    .line 2712
    iget-object v2, p0, Lde/mud/terminal/vt320;->gx:[C

    const/16 v3, 0x30

    aput-char v3, v2, v5

    .line 2713
    iget-object v2, p0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x2

    aput-char v6, v2, v3

    .line 2714
    iget-object v2, p0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x3

    aput-char v6, v2, v3

    .line 2715
    iput-char v4, p0, Lde/mud/terminal/vt320;->gl:C

    .line 2716
    iput-char v5, p0, Lde/mud/terminal/vt320;->gr:C

    .line 2718
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getColumns()I

    move-result v1

    .line 2719
    .local v1, nw:I
    const/16 v2, 0x84

    if-ge v1, v2, :cond_0

    const/16 v1, 0x84

    .line 2720
    :cond_0
    new-array v2, v1, [B

    iput-object v2, p0, Lde/mud/terminal/vt320;->Tabs:[B

    .line 2721
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 2725
    iput v4, p0, Lde/mud/terminal/vt320;->term_state:I

    .line 2726
    return-void

    .line 2722
    :cond_1
    iget-object v2, p0, Lde/mud/terminal/vt320;->Tabs:[B

    aput-byte v5, v2, v0

    .line 2721
    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method protected sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 84
    return-void
.end method

.method public setAnswerBack(Ljava/lang/String;)V
    .locals 1
    .parameter "ab"

    .prologue
    .line 427
    invoke-static {p1}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setIBMCharset(Z)V
    .locals 0
    .parameter "ibm"

    .prologue
    .line 343
    iput-boolean p1, p0, Lde/mud/terminal/vt320;->useibmcharset:Z

    .line 344
    return-void
.end method

.method public setKeyCodes(Ljava/util/Properties;)V
    .locals 6
    .parameter "codes"

    .prologue
    const/4 v5, 0x4

    .line 351
    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "S"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "C"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "A"

    aput-object v4, v1, v3

    .line 354
    .local v1, prefixes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    .line 358
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x14

    if-lt v0, v3, :cond_2

    .line 368
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v5, :cond_7

    .line 400
    return-void

    .line 355
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NUMPAD"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, res:Ljava/lang/String;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v2           #res:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "F"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 361
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SF"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 363
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CF"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 365
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AF"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_6

    iget-object v3, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 358
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 369
    .end local v2           #res:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "PGUP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_8

    iget-object v3, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 371
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "PGDOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_9

    iget-object v3, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 373
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_a

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 375
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "HOME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_b

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 377
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_c

    iget-object v3, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 379
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_d

    iget-object v3, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 381
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "UP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_e

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 383
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "DOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_f

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 385
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "LEFT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_10

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 387
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "RIGHT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_11

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 389
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ESCAPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_12

    iget-object v3, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 391
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "BACKSPACE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_13

    iget-object v3, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 393
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "TAB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_14

    iget-object v3, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 395
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "NUMPLUS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_15

    iget-object v3, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 397
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "NUMDECIMAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2       #res:Ljava/lang/String;
    if-eqz v2, :cond_16

    iget-object v3, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    invoke-static {v2}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 368
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method public setLocalEcho(Z)V
    .locals 0
    .parameter "echo"

    .prologue
    .line 325
    iput-boolean p1, p0, Lde/mud/terminal/vt320;->localecho:Z

    .line 326
    return-void
.end method

.method public setScreenSize(IIZ)V
    .locals 4
    .parameter "c"
    .parameter "r"
    .parameter "broadcast"

    .prologue
    .line 94
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getRows()I

    move-result v0

    .line 99
    .local v0, oldrows:I
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v1}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 102
    if-le p2, v0, :cond_0

    .line 103
    iget v1, p0, Lde/mud/terminal/vt320;->C:I

    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    sub-int v3, p2, v0

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 104
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->redraw()V

    .line 106
    :cond_0
    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p0, p1, p2}, Lde/mud/terminal/vt320;->setWindowSize(II)V

    .line 109
    :cond_1
    return-void
.end method

.method public setTerminalID(Ljava/lang/String;)V
    .locals 9
    .parameter "terminalID"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 407
    iput-object p1, p0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    .line 409
    const-string v0, "scoansi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[M"

    aput-object v1, v0, v5

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[N"

    aput-object v1, v0, v6

    .line 411
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[O"

    aput-object v1, v0, v7

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "\u001b[P"

    aput-object v2, v0, v1

    .line 412
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u001b[Q"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u001b[R"

    aput-object v2, v0, v1

    .line 413
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u001b[S"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u001b[T"

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u001b[U"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u001b[V"

    aput-object v2, v0, v1

    .line 415
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u001b[W"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\u001b[X"

    aput-object v2, v0, v1

    .line 416
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\u001b[Y"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "?"

    aput-object v2, v0, v1

    .line 417
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "\u001b[a"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "\u001b[b"

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "\u001b[c"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "\u001b[d"

    aput-object v2, v0, v1

    .line 419
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "\u001b[e"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "\u001b[f"

    aput-object v2, v0, v1

    .line 420
    iget-object v0, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v1, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    const-string v4, "\u001b[I"

    aput-object v4, v3, v7

    aput-object v4, v2, v6

    aput-object v4, v1, v5

    aput-object v4, v0, v8

    .line 421
    iget-object v0, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v1, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    const-string v4, "\u001b[G"

    aput-object v4, v3, v7

    aput-object v4, v2, v6

    aput-object v4, v1, v5

    aput-object v4, v0, v8

    .line 424
    :cond_0
    return-void
.end method

.method public setVMS(Z)V
    .locals 0
    .parameter "vms"

    .prologue
    .line 334
    iput-boolean p1, p0, Lde/mud/terminal/vt320;->vms:Z

    .line 335
    return-void
.end method

.method protected setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 91
    return-void
.end method

.method public abstract write([B)V
.end method
