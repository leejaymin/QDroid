.class final Lcom/jcraft/jzlib/InfTree;
.super Ljava/lang/Object;
.source "InfTree.java"


# static fields
.field static final cpdext:[I

.field static final cpdist:[I

.field static final cplens:[I

.field static final cplext:[I

.field static final fixed_td:[I

.field static final fixed_tl:[I


# instance fields
.field c:[I

.field hn:[I

.field r:[I

.field u:[I

.field v:[I

.field x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x53

    const/16 v6, 0x50

    const/4 v5, 0x7

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 54
    const/16 v0, 0x600

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 55
    const/16 v2, 0x60

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v5, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v6, v0, v1

    aput v3, v0, v5

    const/16 v1, 0x10

    aput v1, v0, v3

    const/16 v1, 0x54

    aput v1, v0, v4

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 56
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v4, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 57
    aput v6, v0, v1

    const/16 v1, 0x19

    aput v5, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x22

    aput v4, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0x25

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x2e

    aput v4, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xe0

    aput v2, v0, v1

    const/16 v1, 0x30

    .line 59
    aput v6, v0, v1

    const/16 v1, 0x31

    aput v5, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x34

    aput v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v3, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x3a

    aput v4, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x90

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 60
    aput v7, v0, v1

    const/16 v1, 0x3d

    aput v5, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x40

    aput v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0x43

    aput v3, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x46

    aput v4, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xd0

    aput v2, v0, v1

    const/16 v1, 0x48

    .line 61
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x49

    aput v5, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x4c

    aput v3, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x68

    aput v2, v0, v1

    const/16 v1, 0x4f

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v1, v0, v6

    const/16 v1, 0x52

    aput v4, v0, v1

    const/16 v1, 0xb0

    aput v1, v0, v7

    const/16 v1, 0x55

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x56

    aput v3, v0, v1

    const/16 v1, 0x58

    aput v3, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x5e

    aput v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xf0

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 63
    aput v6, v0, v1

    const/16 v1, 0x61

    aput v5, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x64

    aput v3, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x6a

    aput v3, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x6c

    .line 64
    aput v7, v0, v1

    const/16 v1, 0x6d

    aput v5, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x70

    aput v3, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x76

    aput v4, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xc8

    aput v2, v0, v1

    const/16 v1, 0x78

    .line 65
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x79

    aput v5, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x7c

    aput v3, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0x7f

    aput v3, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x82

    aput v4, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0xa8

    aput v2, v0, v1

    const/16 v1, 0x85

    .line 66
    aput v3, v0, v1

    const/16 v1, 0x86

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x84

    aput v2, v0, v1

    const/16 v1, 0x8b

    aput v3, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x8e

    aput v4, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0xe8

    aput v2, v0, v1

    const/16 v1, 0x90

    .line 67
    aput v6, v0, v1

    const/16 v1, 0x91

    aput v5, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x9a

    aput v4, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x98

    aput v2, v0, v1

    const/16 v1, 0x9c

    .line 68
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x9d

    aput v5, v0, v1

    const/16 v1, 0x9e

    aput v7, v0, v1

    const/16 v1, 0xa0

    aput v3, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x7c

    aput v2, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0xa6

    aput v4, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0xd8

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 69
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0xa9

    aput v5, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0xaf

    aput v3, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0xb2

    aput v4, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0xb8

    aput v2, v0, v1

    const/16 v1, 0xb5

    .line 70
    aput v3, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0xbe

    aput v4, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xf8

    aput v2, v0, v1

    const/16 v1, 0xc0

    .line 71
    aput v6, v0, v1

    const/16 v1, 0xc1

    aput v5, v0, v1

    const/16 v1, 0xc2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0xc4

    aput v3, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0xc7

    aput v3, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 72
    aput v7, v0, v1

    const/16 v1, 0xcd

    aput v5, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0xd3

    aput v3, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0xd6

    aput v4, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xc4

    aput v2, v0, v1

    const/16 v1, 0xd8

    .line 73
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0xd9

    aput v5, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0xe2

    aput v4, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0xa4

    aput v2, v0, v1

    const/16 v1, 0xe5

    .line 74
    aput v3, v0, v1

    const/16 v1, 0xe6

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xe8

    aput v3, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x82

    aput v2, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0xee

    aput v4, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xe4

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 75
    aput v6, v0, v1

    const/16 v1, 0xf1

    aput v5, v0, v1

    const/16 v1, 0xf2

    aput v5, v0, v1

    const/16 v1, 0xf4

    aput v3, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0xfa

    aput v4, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x94

    aput v2, v0, v1

    const/16 v1, 0xfc

    .line 76
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0xfd

    aput v5, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x100

    aput v3, v0, v1

    const/16 v1, 0x101

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0x103

    aput v3, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x106

    aput v4, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0x108

    .line 77
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x109

    aput v5, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x10c

    aput v3, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0x10f

    aput v3, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x112

    aput v4, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0xb4

    aput v2, v0, v1

    const/16 v1, 0x115

    .line 78
    aput v3, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x118

    aput v3, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0x11b

    aput v3, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x11e

    aput v4, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0xf4

    aput v2, v0, v1

    const/16 v1, 0x120

    .line 79
    aput v6, v0, v1

    const/16 v1, 0x121

    aput v5, v0, v1

    const/16 v1, 0x122

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x124

    aput v3, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x56

    aput v2, v0, v1

    const/16 v1, 0x127

    aput v3, v0, v1

    const/16 v1, 0x128

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x12a

    aput v3, v0, v1

    const/16 v1, 0x12c

    .line 80
    aput v7, v0, v1

    const/16 v1, 0x12d

    aput v5, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x130

    aput v3, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0x133

    aput v3, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x136

    aput v4, v0, v1

    const/16 v1, 0x137

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0x138

    .line 81
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x139

    aput v5, v0, v1

    const/16 v1, 0x13a

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x13c

    aput v3, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0x13f

    aput v3, v0, v1

    const/16 v1, 0x140

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x142

    aput v4, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0xac

    aput v2, v0, v1

    const/16 v1, 0x145

    .line 82
    aput v3, v0, v1

    const/16 v1, 0x146

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x148

    aput v3, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x14b

    aput v3, v0, v1

    const/16 v1, 0x14c

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x14e

    aput v4, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0xec

    aput v2, v0, v1

    const/16 v1, 0x150

    .line 83
    aput v6, v0, v1

    const/16 v1, 0x151

    aput v5, v0, v1

    const/16 v1, 0x152

    aput v4, v0, v1

    const/16 v1, 0x154

    aput v3, v0, v1

    const/16 v1, 0x155

    const/16 v2, 0x5e

    aput v2, v0, v1

    const/16 v1, 0x157

    aput v3, v0, v1

    const/16 v1, 0x158

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x15a

    aput v4, v0, v1

    const/16 v1, 0x15b

    const/16 v2, 0x9c

    aput v2, v0, v1

    const/16 v1, 0x15c

    .line 84
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x15d

    aput v5, v0, v1

    const/16 v1, 0x15e

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x160

    aput v3, v0, v1

    const/16 v1, 0x161

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/16 v1, 0x163

    aput v3, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x166

    aput v4, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0xdc

    aput v2, v0, v1

    const/16 v1, 0x168

    .line 85
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x169

    aput v5, v0, v1

    const/16 v1, 0x16a

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x16c

    aput v3, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x6e

    aput v2, v0, v1

    const/16 v1, 0x16f

    aput v3, v0, v1

    const/16 v1, 0x170

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x172

    aput v4, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0xbc

    aput v2, v0, v1

    const/16 v1, 0x175

    .line 86
    aput v3, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x178

    aput v3, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/16 v1, 0x17b

    aput v3, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x17e

    aput v4, v0, v1

    const/16 v1, 0x17f

    const/16 v2, 0xfc

    aput v2, v0, v1

    const/16 v1, 0x180

    .line 87
    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x181

    aput v5, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v3, v0, v1

    const/16 v1, 0x185

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x187

    aput v3, v0, v1

    const/16 v1, 0x188

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x18a

    aput v3, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x18c

    .line 88
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x18d

    aput v5, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x190

    aput v3, v0, v1

    const/16 v1, 0x191

    const/16 v2, 0x71

    aput v2, v0, v1

    const/16 v1, 0x193

    aput v3, v0, v1

    const/16 v1, 0x194

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x196

    aput v4, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0xc2

    aput v2, v0, v1

    const/16 v1, 0x198

    .line 89
    aput v6, v0, v1

    const/16 v1, 0x199

    aput v5, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x19c

    aput v3, v0, v1

    const/16 v1, 0x19d

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0x19f

    aput v3, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x1a2

    aput v4, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0xa2

    aput v2, v0, v1

    const/16 v1, 0x1a5

    .line 90
    aput v3, v0, v1

    const/16 v1, 0x1a6

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x1a8

    aput v3, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x1ab

    aput v3, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, 0x41

    aput v2, v0, v1

    const/16 v1, 0x1ae

    aput v4, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0xe2

    aput v2, v0, v1

    const/16 v1, 0x1b0

    .line 91
    aput v6, v0, v1

    const/16 v1, 0x1b1

    aput v5, v0, v1

    const/16 v1, 0x1b2

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x1b4

    aput v3, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x1b7

    aput v3, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x1ba

    aput v4, v0, v1

    const/16 v1, 0x1bb

    const/16 v2, 0x92

    aput v2, v0, v1

    const/16 v1, 0x1bc

    .line 92
    aput v7, v0, v1

    const/16 v1, 0x1bd

    aput v5, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x1c0

    aput v3, v0, v1

    const/16 v1, 0x1c1

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x1c3

    aput v3, v0, v1

    const/16 v1, 0x1c4

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x1c6

    aput v4, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0xd2

    aput v2, v0, v1

    const/16 v1, 0x1c8

    .line 93
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x1c9

    aput v5, v0, v1

    const/16 v1, 0x1ca

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x1cc

    aput v3, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x1cf

    aput v3, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x1d2

    aput v4, v0, v1

    const/16 v1, 0x1d3

    const/16 v2, 0xb2

    aput v2, v0, v1

    const/16 v1, 0x1d5

    .line 94
    aput v3, v0, v1

    const/16 v1, 0x1d6

    aput v4, v0, v1

    const/16 v1, 0x1d8

    aput v3, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0x1db

    aput v3, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x1de

    aput v4, v0, v1

    const/16 v1, 0x1df

    const/16 v2, 0xf2

    aput v2, v0, v1

    const/16 v1, 0x1e0

    .line 95
    aput v6, v0, v1

    const/16 v1, 0x1e1

    aput v5, v0, v1

    const/16 v1, 0x1e2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x1e4

    aput v3, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x1e7

    aput v3, v0, v1

    const/16 v1, 0x1e8

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x1e9

    aput v6, v0, v1

    const/16 v1, 0x1ea

    aput v3, v0, v1

    const/16 v1, 0x1eb

    const/16 v2, 0x102

    aput v2, v0, v1

    const/16 v1, 0x1ec

    .line 96
    aput v7, v0, v1

    const/16 v1, 0x1ed

    aput v5, v0, v1

    const/16 v1, 0x1ee

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x1f0

    aput v3, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0x1f3

    aput v3, v0, v1

    const/16 v1, 0x1f4

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x1f6

    aput v4, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0xca

    aput v2, v0, v1

    const/16 v1, 0x1f8

    .line 97
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x1f9

    aput v5, v0, v1

    const/16 v1, 0x1fa

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x1fc

    aput v3, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, 0x65

    aput v2, v0, v1

    const/16 v1, 0x1ff

    aput v3, v0, v1

    const/16 v1, 0x200

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x202

    aput v4, v0, v1

    const/16 v1, 0x203

    const/16 v2, 0xaa

    aput v2, v0, v1

    const/16 v1, 0x205

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x206

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x208

    aput v3, v0, v1

    const/16 v1, 0x209

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0x20b

    aput v3, v0, v1

    const/16 v1, 0x20c

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x20e

    aput v4, v0, v1

    const/16 v1, 0x20f

    const/16 v2, 0xea

    aput v2, v0, v1

    const/16 v1, 0x210

    .line 99
    aput v6, v0, v1

    const/16 v1, 0x211

    aput v5, v0, v1

    const/16 v1, 0x212

    aput v3, v0, v1

    const/16 v1, 0x214

    aput v3, v0, v1

    const/16 v1, 0x215

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x217

    aput v3, v0, v1

    const/16 v1, 0x218

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x21a

    aput v4, v0, v1

    const/16 v1, 0x21b

    const/16 v2, 0x9a

    aput v2, v0, v1

    const/16 v1, 0x21c

    .line 100
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x21d

    aput v5, v0, v1

    const/16 v1, 0x21e

    aput v7, v0, v1

    const/16 v1, 0x220

    aput v3, v0, v1

    const/16 v1, 0x221

    const/16 v2, 0x7d

    aput v2, v0, v1

    const/16 v1, 0x223

    aput v3, v0, v1

    const/16 v1, 0x224

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x226

    aput v4, v0, v1

    const/16 v1, 0x227

    const/16 v2, 0xda

    aput v2, v0, v1

    const/16 v1, 0x228

    .line 101
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x229

    aput v5, v0, v1

    const/16 v1, 0x22a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x22c

    aput v3, v0, v1

    const/16 v1, 0x22d

    const/16 v2, 0x6d

    aput v2, v0, v1

    const/16 v1, 0x22f

    aput v3, v0, v1

    const/16 v1, 0x230

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x232

    aput v4, v0, v1

    const/16 v1, 0x233

    const/16 v2, 0xba

    aput v2, v0, v1

    const/16 v1, 0x235

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x236

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x238

    aput v3, v0, v1

    const/16 v1, 0x239

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0x23b

    aput v3, v0, v1

    const/16 v1, 0x23c

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x23e

    aput v4, v0, v1

    const/16 v1, 0x23f

    const/16 v2, 0xfa

    aput v2, v0, v1

    const/16 v1, 0x240

    .line 103
    aput v6, v0, v1

    const/16 v1, 0x241

    aput v5, v0, v1

    const/16 v1, 0x242

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x244

    aput v3, v0, v1

    const/16 v1, 0x245

    aput v7, v0, v1

    const/16 v1, 0x247

    aput v3, v0, v1

    const/16 v1, 0x248

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x249

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x24a

    aput v3, v0, v1

    const/16 v1, 0x24b

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x24c

    .line 104
    aput v7, v0, v1

    const/16 v1, 0x24d

    aput v5, v0, v1

    const/16 v1, 0x24e

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x250

    aput v3, v0, v1

    const/16 v1, 0x251

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0x253

    aput v3, v0, v1

    const/16 v1, 0x254

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x256

    aput v4, v0, v1

    const/16 v1, 0x257

    const/16 v2, 0xc6

    aput v2, v0, v1

    const/16 v1, 0x258

    .line 105
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x259

    aput v5, v0, v1

    const/16 v1, 0x25a

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x25c

    aput v3, v0, v1

    const/16 v1, 0x25d

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x25f

    aput v3, v0, v1

    const/16 v1, 0x260

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x262

    aput v4, v0, v1

    const/16 v1, 0x263

    const/16 v2, 0xa6

    aput v2, v0, v1

    const/16 v1, 0x265

    .line 106
    aput v3, v0, v1

    const/16 v1, 0x266

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x268

    aput v3, v0, v1

    const/16 v1, 0x269

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x26b

    aput v3, v0, v1

    const/16 v1, 0x26c

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x26e

    aput v4, v0, v1

    const/16 v1, 0x26f

    const/16 v2, 0xe6

    aput v2, v0, v1

    const/16 v1, 0x270

    .line 107
    aput v6, v0, v1

    const/16 v1, 0x271

    aput v5, v0, v1

    const/16 v1, 0x272

    aput v5, v0, v1

    const/16 v1, 0x274

    aput v3, v0, v1

    const/16 v1, 0x275

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x277

    aput v3, v0, v1

    const/16 v1, 0x278

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x27a

    aput v4, v0, v1

    const/16 v1, 0x27b

    const/16 v2, 0x96

    aput v2, v0, v1

    const/16 v1, 0x27c

    .line 108
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x27d

    aput v5, v0, v1

    const/16 v1, 0x27e

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x280

    aput v3, v0, v1

    const/16 v1, 0x281

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0x283

    aput v3, v0, v1

    const/16 v1, 0x284

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x286

    aput v4, v0, v1

    const/16 v1, 0x287

    const/16 v2, 0xd6

    aput v2, v0, v1

    const/16 v1, 0x288

    .line 109
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x289

    aput v5, v0, v1

    const/16 v1, 0x28a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x28c

    aput v3, v0, v1

    const/16 v1, 0x28d

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x28f

    aput v3, v0, v1

    const/16 v1, 0x290

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x292

    aput v4, v0, v1

    const/16 v1, 0x293

    const/16 v2, 0xb6

    aput v2, v0, v1

    const/16 v1, 0x295

    .line 110
    aput v3, v0, v1

    const/16 v1, 0x296

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x298

    aput v3, v0, v1

    const/16 v1, 0x299

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x29b

    aput v3, v0, v1

    const/16 v1, 0x29c

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x29e

    aput v4, v0, v1

    const/16 v1, 0x29f

    const/16 v2, 0xf6

    aput v2, v0, v1

    const/16 v1, 0x2a0

    .line 111
    aput v6, v0, v1

    const/16 v1, 0x2a1

    aput v5, v0, v1

    const/16 v1, 0x2a2

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x2a4

    aput v3, v0, v1

    const/16 v1, 0x2a5

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x2a7

    aput v3, v0, v1

    const/16 v1, 0x2a8

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x2a9

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x2aa

    aput v3, v0, v1

    const/16 v1, 0x2ac

    .line 112
    aput v7, v0, v1

    const/16 v1, 0x2ad

    aput v5, v0, v1

    const/16 v1, 0x2ae

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x2b0

    aput v3, v0, v1

    const/16 v1, 0x2b1

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x2b3

    aput v3, v0, v1

    const/16 v1, 0x2b4

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x2b6

    aput v4, v0, v1

    const/16 v1, 0x2b7

    const/16 v2, 0xce

    aput v2, v0, v1

    const/16 v1, 0x2b8

    .line 113
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x2b9

    aput v5, v0, v1

    const/16 v1, 0x2ba

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x2bc

    aput v3, v0, v1

    const/16 v1, 0x2bd

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0x2bf

    aput v3, v0, v1

    const/16 v1, 0x2c0

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2c2

    aput v4, v0, v1

    const/16 v1, 0x2c3

    const/16 v2, 0xae

    aput v2, v0, v1

    const/16 v1, 0x2c5

    .line 114
    aput v3, v0, v1

    const/16 v1, 0x2c6

    aput v5, v0, v1

    const/16 v1, 0x2c8

    aput v3, v0, v1

    const/16 v1, 0x2c9

    const/16 v2, 0x87

    aput v2, v0, v1

    const/16 v1, 0x2cb

    aput v3, v0, v1

    const/16 v1, 0x2cc

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x2ce

    aput v4, v0, v1

    const/16 v1, 0x2cf

    const/16 v2, 0xee

    aput v2, v0, v1

    const/16 v1, 0x2d0

    .line 115
    aput v6, v0, v1

    const/16 v1, 0x2d1

    aput v5, v0, v1

    const/16 v1, 0x2d2

    aput v4, v0, v1

    const/16 v1, 0x2d4

    aput v3, v0, v1

    const/16 v1, 0x2d5

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0x2d7

    aput v3, v0, v1

    const/16 v1, 0x2d8

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x2da

    aput v4, v0, v1

    const/16 v1, 0x2db

    const/16 v2, 0x9e

    aput v2, v0, v1

    const/16 v1, 0x2dc

    .line 116
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x2dd

    aput v5, v0, v1

    const/16 v1, 0x2de

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x2e0

    aput v3, v0, v1

    const/16 v1, 0x2e1

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x2e3

    aput v3, v0, v1

    const/16 v1, 0x2e4

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x2e6

    aput v4, v0, v1

    const/16 v1, 0x2e7

    const/16 v2, 0xde

    aput v2, v0, v1

    const/16 v1, 0x2e8

    .line 117
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x2e9

    aput v5, v0, v1

    const/16 v1, 0x2ea

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x2ec

    aput v3, v0, v1

    const/16 v1, 0x2ed

    const/16 v2, 0x6f

    aput v2, v0, v1

    const/16 v1, 0x2ef

    aput v3, v0, v1

    const/16 v1, 0x2f0

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x2f2

    aput v4, v0, v1

    const/16 v1, 0x2f3

    const/16 v2, 0xbe

    aput v2, v0, v1

    const/16 v1, 0x2f5

    .line 118
    aput v3, v0, v1

    const/16 v1, 0x2f6

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x2f8

    aput v3, v0, v1

    const/16 v1, 0x2f9

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0x2fb

    aput v3, v0, v1

    const/16 v1, 0x2fc

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x2fe

    aput v4, v0, v1

    const/16 v1, 0x2ff

    const/16 v2, 0xfe

    aput v2, v0, v1

    const/16 v1, 0x300

    .line 119
    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x301

    aput v5, v0, v1

    const/16 v1, 0x302

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x304

    aput v3, v0, v1

    const/16 v1, 0x305

    aput v6, v0, v1

    const/16 v1, 0x307

    aput v3, v0, v1

    const/16 v1, 0x308

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x309

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x30a

    aput v3, v0, v1

    const/16 v1, 0x30b

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0x30c

    .line 120
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x30d

    aput v5, v0, v1

    const/16 v1, 0x30e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x310

    aput v3, v0, v1

    const/16 v1, 0x311

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x316

    aput v4, v0, v1

    const/16 v1, 0x317

    const/16 v2, 0xc1

    aput v2, v0, v1

    const/16 v1, 0x318

    .line 122
    aput v6, v0, v1

    const/16 v1, 0x319

    aput v5, v0, v1

    const/16 v1, 0x31a

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x31c

    aput v3, v0, v1

    const/16 v1, 0x31d

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x31f

    aput v3, v0, v1

    const/16 v1, 0x320

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x322

    aput v4, v0, v1

    const/16 v1, 0x323

    const/16 v2, 0xa1

    aput v2, v0, v1

    const/16 v1, 0x325

    .line 123
    aput v3, v0, v1

    const/16 v1, 0x328

    aput v3, v0, v1

    const/16 v1, 0x329

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x32b

    aput v3, v0, v1

    const/16 v1, 0x32c

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x32e

    aput v4, v0, v1

    const/16 v1, 0x32f

    const/16 v2, 0xe1

    aput v2, v0, v1

    const/16 v1, 0x330

    .line 124
    aput v6, v0, v1

    const/16 v1, 0x331

    aput v5, v0, v1

    const/16 v1, 0x332

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x334

    aput v3, v0, v1

    const/16 v1, 0x335

    const/16 v2, 0x58

    aput v2, v0, v1

    const/16 v1, 0x337

    aput v3, v0, v1

    const/16 v1, 0x338

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x33a

    aput v4, v0, v1

    const/16 v1, 0x33b

    const/16 v2, 0x91

    aput v2, v0, v1

    const/16 v1, 0x33c

    .line 125
    aput v7, v0, v1

    const/16 v1, 0x33d

    aput v5, v0, v1

    const/16 v1, 0x33e

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x340

    aput v3, v0, v1

    const/16 v1, 0x341

    const/16 v2, 0x78

    aput v2, v0, v1

    const/16 v1, 0x343

    aput v3, v0, v1

    const/16 v1, 0x344

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x346

    aput v4, v0, v1

    const/16 v1, 0x347

    const/16 v2, 0xd1

    aput v2, v0, v1

    const/16 v1, 0x348

    .line 126
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x349

    aput v5, v0, v1

    const/16 v1, 0x34a

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x34c

    aput v3, v0, v1

    const/16 v1, 0x34d

    const/16 v2, 0x68

    aput v2, v0, v1

    const/16 v1, 0x34f

    aput v3, v0, v1

    const/16 v1, 0x350

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x352

    aput v4, v0, v1

    const/16 v1, 0x353

    const/16 v2, 0xb1

    aput v2, v0, v1

    const/16 v1, 0x355

    .line 127
    aput v3, v0, v1

    const/16 v1, 0x356

    aput v3, v0, v1

    const/16 v1, 0x358

    aput v3, v0, v1

    const/16 v1, 0x359

    const/16 v2, 0x88

    aput v2, v0, v1

    const/16 v1, 0x35b

    aput v3, v0, v1

    const/16 v1, 0x35c

    const/16 v2, 0x48

    aput v2, v0, v1

    const/16 v1, 0x35e

    aput v4, v0, v1

    const/16 v1, 0x35f

    const/16 v2, 0xf1

    aput v2, v0, v1

    const/16 v1, 0x360

    .line 128
    aput v6, v0, v1

    const/16 v1, 0x361

    aput v5, v0, v1

    const/16 v1, 0x362

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x364

    aput v3, v0, v1

    const/16 v1, 0x365

    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x367

    aput v3, v0, v1

    const/16 v1, 0x368

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x369

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x36a

    aput v3, v0, v1

    const/16 v1, 0x36b

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x36c

    .line 129
    aput v7, v0, v1

    const/16 v1, 0x36d

    aput v5, v0, v1

    const/16 v1, 0x36e

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x370

    aput v3, v0, v1

    const/16 v1, 0x371

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0x373

    aput v3, v0, v1

    const/16 v1, 0x374

    const/16 v2, 0x34

    aput v2, v0, v1

    const/16 v1, 0x376

    aput v4, v0, v1

    const/16 v1, 0x377

    const/16 v2, 0xc9

    aput v2, v0, v1

    const/16 v1, 0x378

    .line 130
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x379

    aput v5, v0, v1

    const/16 v1, 0x37a

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x37c

    aput v3, v0, v1

    const/16 v1, 0x37d

    const/16 v2, 0x64

    aput v2, v0, v1

    const/16 v1, 0x37f

    aput v3, v0, v1

    const/16 v1, 0x380

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x382

    aput v4, v0, v1

    const/16 v1, 0x383

    const/16 v2, 0xa9

    aput v2, v0, v1

    const/16 v1, 0x385

    .line 131
    aput v3, v0, v1

    const/16 v1, 0x386

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x388

    aput v3, v0, v1

    const/16 v1, 0x389

    const/16 v2, 0x84

    aput v2, v0, v1

    const/16 v1, 0x38b

    aput v3, v0, v1

    const/16 v1, 0x38c

    const/16 v2, 0x44

    aput v2, v0, v1

    const/16 v1, 0x38e

    aput v4, v0, v1

    const/16 v1, 0x38f

    const/16 v2, 0xe9

    aput v2, v0, v1

    const/16 v1, 0x390

    .line 132
    aput v6, v0, v1

    const/16 v1, 0x391

    aput v5, v0, v1

    const/16 v1, 0x392

    aput v3, v0, v1

    const/16 v1, 0x394

    aput v3, v0, v1

    const/16 v1, 0x395

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x397

    aput v3, v0, v1

    const/16 v1, 0x398

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x39a

    aput v4, v0, v1

    const/16 v1, 0x39b

    const/16 v2, 0x99

    aput v2, v0, v1

    const/16 v1, 0x39c

    .line 133
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x39d

    aput v5, v0, v1

    const/16 v1, 0x39e

    aput v7, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a1

    const/16 v2, 0x7c

    aput v2, v0, v1

    const/16 v1, 0x3a3

    aput v3, v0, v1

    const/16 v1, 0x3a4

    const/16 v2, 0x3c

    aput v2, v0, v1

    const/16 v1, 0x3a6

    aput v4, v0, v1

    const/16 v1, 0x3a7

    const/16 v2, 0xd9

    aput v2, v0, v1

    const/16 v1, 0x3a8

    .line 134
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x3a9

    aput v5, v0, v1

    const/16 v1, 0x3aa

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x3ac

    aput v3, v0, v1

    const/16 v1, 0x3ad

    const/16 v2, 0x6c

    aput v2, v0, v1

    const/16 v1, 0x3af

    aput v3, v0, v1

    const/16 v1, 0x3b0

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x3b2

    aput v4, v0, v1

    const/16 v1, 0x3b3

    const/16 v2, 0xb9

    aput v2, v0, v1

    const/16 v1, 0x3b5

    .line 135
    aput v3, v0, v1

    const/16 v1, 0x3b6

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x3b8

    aput v3, v0, v1

    const/16 v1, 0x3b9

    const/16 v2, 0x8c

    aput v2, v0, v1

    const/16 v1, 0x3bb

    aput v3, v0, v1

    const/16 v1, 0x3bc

    const/16 v2, 0x4c

    aput v2, v0, v1

    const/16 v1, 0x3be

    aput v4, v0, v1

    const/16 v1, 0x3bf

    const/16 v2, 0xf9

    aput v2, v0, v1

    const/16 v1, 0x3c0

    .line 136
    aput v6, v0, v1

    const/16 v1, 0x3c1

    aput v5, v0, v1

    const/16 v1, 0x3c2

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x3c4

    aput v3, v0, v1

    const/16 v1, 0x3c5

    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x3c7

    aput v3, v0, v1

    const/16 v1, 0x3c8

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x3c9

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x3ca

    aput v3, v0, v1

    const/16 v1, 0x3cb

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0x3cc

    .line 137
    aput v7, v0, v1

    const/16 v1, 0x3cd

    aput v5, v0, v1

    const/16 v1, 0x3ce

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x3d0

    aput v3, v0, v1

    const/16 v1, 0x3d1

    const/16 v2, 0x72

    aput v2, v0, v1

    const/16 v1, 0x3d3

    aput v3, v0, v1

    const/16 v1, 0x3d4

    const/16 v2, 0x32

    aput v2, v0, v1

    const/16 v1, 0x3d6

    aput v4, v0, v1

    const/16 v1, 0x3d7

    const/16 v2, 0xc5

    aput v2, v0, v1

    const/16 v1, 0x3d8

    .line 138
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x3d9

    aput v5, v0, v1

    const/16 v1, 0x3da

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x3dc

    aput v3, v0, v1

    const/16 v1, 0x3dd

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0x3df

    aput v3, v0, v1

    const/16 v1, 0x3e0

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x3e2

    aput v4, v0, v1

    const/16 v1, 0x3e3

    const/16 v2, 0xa5

    aput v2, v0, v1

    const/16 v1, 0x3e5

    .line 139
    aput v3, v0, v1

    const/16 v1, 0x3e6

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x3e8

    aput v3, v0, v1

    const/16 v1, 0x3e9

    const/16 v2, 0x82

    aput v2, v0, v1

    const/16 v1, 0x3eb

    aput v3, v0, v1

    const/16 v1, 0x3ec

    const/16 v2, 0x42

    aput v2, v0, v1

    const/16 v1, 0x3ee

    aput v4, v0, v1

    const/16 v1, 0x3ef

    const/16 v2, 0xe5

    aput v2, v0, v1

    const/16 v1, 0x3f0

    .line 140
    aput v6, v0, v1

    const/16 v1, 0x3f1

    aput v5, v0, v1

    const/16 v1, 0x3f2

    aput v5, v0, v1

    const/16 v1, 0x3f4

    aput v3, v0, v1

    const/16 v1, 0x3f5

    const/16 v2, 0x5a

    aput v2, v0, v1

    const/16 v1, 0x3f7

    aput v3, v0, v1

    const/16 v1, 0x3f8

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x3fa

    aput v4, v0, v1

    const/16 v1, 0x3fb

    const/16 v2, 0x95

    aput v2, v0, v1

    const/16 v1, 0x3fc

    .line 141
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x3fd

    aput v5, v0, v1

    const/16 v1, 0x3fe

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x400

    aput v3, v0, v1

    const/16 v1, 0x401

    const/16 v2, 0x7a

    aput v2, v0, v1

    const/16 v1, 0x403

    aput v3, v0, v1

    const/16 v1, 0x404

    const/16 v2, 0x3a

    aput v2, v0, v1

    const/16 v1, 0x406

    aput v4, v0, v1

    const/16 v1, 0x407

    const/16 v2, 0xd5

    aput v2, v0, v1

    const/16 v1, 0x408

    .line 142
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x409

    aput v5, v0, v1

    const/16 v1, 0x40a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x40c

    aput v3, v0, v1

    const/16 v1, 0x40d

    const/16 v2, 0x6a

    aput v2, v0, v1

    const/16 v1, 0x40f

    aput v3, v0, v1

    const/16 v1, 0x410

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x412

    aput v4, v0, v1

    const/16 v1, 0x413

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/16 v1, 0x415

    .line 143
    aput v3, v0, v1

    const/16 v1, 0x416

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x418

    aput v3, v0, v1

    const/16 v1, 0x419

    const/16 v2, 0x8a

    aput v2, v0, v1

    const/16 v1, 0x41b

    aput v3, v0, v1

    const/16 v1, 0x41c

    const/16 v2, 0x4a

    aput v2, v0, v1

    const/16 v1, 0x41e

    aput v4, v0, v1

    const/16 v1, 0x41f

    const/16 v2, 0xf5

    aput v2, v0, v1

    const/16 v1, 0x420

    .line 144
    aput v6, v0, v1

    const/16 v1, 0x421

    aput v5, v0, v1

    const/16 v1, 0x422

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x424

    aput v3, v0, v1

    const/16 v1, 0x425

    const/16 v2, 0x56

    aput v2, v0, v1

    const/16 v1, 0x427

    aput v3, v0, v1

    const/16 v1, 0x428

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x429

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x42a

    aput v3, v0, v1

    const/16 v1, 0x42c

    .line 145
    aput v7, v0, v1

    const/16 v1, 0x42d

    aput v5, v0, v1

    const/16 v1, 0x42e

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x430

    aput v3, v0, v1

    const/16 v1, 0x431

    const/16 v2, 0x76

    aput v2, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x434

    const/16 v2, 0x36

    aput v2, v0, v1

    const/16 v1, 0x436

    aput v4, v0, v1

    const/16 v1, 0x437

    const/16 v2, 0xcd

    aput v2, v0, v1

    const/16 v1, 0x438

    .line 146
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x439

    aput v5, v0, v1

    const/16 v1, 0x43a

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x43c

    aput v3, v0, v1

    const/16 v1, 0x43d

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0x43f

    aput v3, v0, v1

    const/16 v1, 0x440

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x442

    aput v4, v0, v1

    const/16 v1, 0x443

    const/16 v2, 0xad

    aput v2, v0, v1

    const/16 v1, 0x445

    .line 147
    aput v3, v0, v1

    const/16 v1, 0x446

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x448

    aput v3, v0, v1

    const/16 v1, 0x449

    const/16 v2, 0x86

    aput v2, v0, v1

    const/16 v1, 0x44b

    aput v3, v0, v1

    const/16 v1, 0x44c

    const/16 v2, 0x46

    aput v2, v0, v1

    const/16 v1, 0x44e

    aput v4, v0, v1

    const/16 v1, 0x44f

    const/16 v2, 0xed

    aput v2, v0, v1

    const/16 v1, 0x450

    .line 148
    aput v6, v0, v1

    const/16 v1, 0x451

    aput v5, v0, v1

    const/16 v1, 0x452

    aput v4, v0, v1

    const/16 v1, 0x454

    aput v3, v0, v1

    const/16 v1, 0x455

    const/16 v2, 0x5e

    aput v2, v0, v1

    const/16 v1, 0x457

    aput v3, v0, v1

    const/16 v1, 0x458

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x45a

    aput v4, v0, v1

    const/16 v1, 0x45b

    const/16 v2, 0x9d

    aput v2, v0, v1

    const/16 v1, 0x45c

    .line 149
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x45d

    aput v5, v0, v1

    const/16 v1, 0x45e

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x460

    aput v3, v0, v1

    const/16 v1, 0x461

    const/16 v2, 0x7e

    aput v2, v0, v1

    const/16 v1, 0x463

    aput v3, v0, v1

    const/16 v1, 0x464

    const/16 v2, 0x3e

    aput v2, v0, v1

    const/16 v1, 0x466

    aput v4, v0, v1

    const/16 v1, 0x467

    const/16 v2, 0xdd

    aput v2, v0, v1

    const/16 v1, 0x468

    .line 150
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x469

    aput v5, v0, v1

    const/16 v1, 0x46a

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x46c

    aput v3, v0, v1

    const/16 v1, 0x46d

    const/16 v2, 0x6e

    aput v2, v0, v1

    const/16 v1, 0x46f

    aput v3, v0, v1

    const/16 v1, 0x470

    const/16 v2, 0x2e

    aput v2, v0, v1

    const/16 v1, 0x472

    aput v4, v0, v1

    const/16 v1, 0x473

    const/16 v2, 0xbd

    aput v2, v0, v1

    const/16 v1, 0x475

    .line 151
    aput v3, v0, v1

    const/16 v1, 0x476

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x478

    aput v3, v0, v1

    const/16 v1, 0x479

    const/16 v2, 0x8e

    aput v2, v0, v1

    const/16 v1, 0x47b

    aput v3, v0, v1

    const/16 v1, 0x47c

    const/16 v2, 0x4e

    aput v2, v0, v1

    const/16 v1, 0x47e

    aput v4, v0, v1

    const/16 v1, 0x47f

    const/16 v2, 0xfd

    aput v2, v0, v1

    const/16 v1, 0x480

    .line 152
    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x481

    aput v5, v0, v1

    const/16 v1, 0x482

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x484

    aput v3, v0, v1

    const/16 v1, 0x485

    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x487

    aput v3, v0, v1

    const/16 v1, 0x488

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x489

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x48a

    aput v3, v0, v1

    const/16 v1, 0x48b

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x48c

    .line 153
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x48d

    aput v5, v0, v1

    const/16 v1, 0x48e

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x490

    aput v3, v0, v1

    const/16 v1, 0x491

    const/16 v2, 0x71

    aput v2, v0, v1

    const/16 v1, 0x493

    aput v3, v0, v1

    const/16 v1, 0x494

    const/16 v2, 0x31

    aput v2, v0, v1

    const/16 v1, 0x496

    aput v4, v0, v1

    const/16 v1, 0x497

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x498

    .line 154
    aput v6, v0, v1

    const/16 v1, 0x499

    aput v5, v0, v1

    const/16 v1, 0x49a

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x49c

    aput v3, v0, v1

    const/16 v1, 0x49d

    const/16 v2, 0x61

    aput v2, v0, v1

    const/16 v1, 0x49f

    aput v3, v0, v1

    const/16 v1, 0x4a0

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x4a2

    aput v4, v0, v1

    const/16 v1, 0x4a3

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0x4a5

    .line 155
    aput v3, v0, v1

    const/16 v1, 0x4a6

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x4a8

    aput v3, v0, v1

    const/16 v1, 0x4a9

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4ac

    const/16 v2, 0x41

    aput v2, v0, v1

    const/16 v1, 0x4ae

    aput v4, v0, v1

    const/16 v1, 0x4af

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x4b0

    .line 156
    aput v6, v0, v1

    const/16 v1, 0x4b1

    aput v5, v0, v1

    const/16 v1, 0x4b2

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x4b4

    aput v3, v0, v1

    const/16 v1, 0x4b5

    const/16 v2, 0x59

    aput v2, v0, v1

    const/16 v1, 0x4b7

    aput v3, v0, v1

    const/16 v1, 0x4b8

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x4ba

    aput v4, v0, v1

    const/16 v1, 0x4bb

    const/16 v2, 0x93

    aput v2, v0, v1

    const/16 v1, 0x4bc

    .line 157
    aput v7, v0, v1

    const/16 v1, 0x4bd

    aput v5, v0, v1

    const/16 v1, 0x4be

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x4c0

    aput v3, v0, v1

    const/16 v1, 0x4c1

    const/16 v2, 0x79

    aput v2, v0, v1

    const/16 v1, 0x4c3

    aput v3, v0, v1

    const/16 v1, 0x4c4

    const/16 v2, 0x39

    aput v2, v0, v1

    const/16 v1, 0x4c6

    aput v4, v0, v1

    const/16 v1, 0x4c7

    const/16 v2, 0xd3

    aput v2, v0, v1

    const/16 v1, 0x4c8

    .line 158
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x4c9

    aput v5, v0, v1

    const/16 v1, 0x4ca

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    const/16 v2, 0x69

    aput v2, v0, v1

    const/16 v1, 0x4cf

    aput v3, v0, v1

    const/16 v1, 0x4d0

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x4d2

    aput v4, v0, v1

    const/16 v1, 0x4d3

    const/16 v2, 0xb3

    aput v2, v0, v1

    const/16 v1, 0x4d5

    .line 159
    aput v3, v0, v1

    const/16 v1, 0x4d6

    aput v4, v0, v1

    const/16 v1, 0x4d8

    aput v3, v0, v1

    const/16 v1, 0x4d9

    const/16 v2, 0x89

    aput v2, v0, v1

    const/16 v1, 0x4db

    aput v3, v0, v1

    const/16 v1, 0x4dc

    const/16 v2, 0x49

    aput v2, v0, v1

    const/16 v1, 0x4de

    aput v4, v0, v1

    const/16 v1, 0x4df

    const/16 v2, 0xf3

    aput v2, v0, v1

    const/16 v1, 0x4e0

    .line 160
    aput v6, v0, v1

    const/16 v1, 0x4e1

    aput v5, v0, v1

    const/16 v1, 0x4e2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x4e4

    aput v3, v0, v1

    const/16 v1, 0x4e5

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x4e7

    aput v3, v0, v1

    const/16 v1, 0x4e8

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x4e9

    aput v6, v0, v1

    const/16 v1, 0x4ea

    aput v3, v0, v1

    const/16 v1, 0x4eb

    const/16 v2, 0x102

    aput v2, v0, v1

    const/16 v1, 0x4ec

    .line 161
    aput v7, v0, v1

    const/16 v1, 0x4ed

    aput v5, v0, v1

    const/16 v1, 0x4ee

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x4f0

    aput v3, v0, v1

    const/16 v1, 0x4f1

    const/16 v2, 0x75

    aput v2, v0, v1

    const/16 v1, 0x4f3

    aput v3, v0, v1

    const/16 v1, 0x4f4

    const/16 v2, 0x35

    aput v2, v0, v1

    const/16 v1, 0x4f6

    aput v4, v0, v1

    const/16 v1, 0x4f7

    const/16 v2, 0xcb

    aput v2, v0, v1

    const/16 v1, 0x4f8

    .line 162
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x4f9

    aput v5, v0, v1

    const/16 v1, 0x4fa

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x4fc

    aput v3, v0, v1

    const/16 v1, 0x4fd

    const/16 v2, 0x65

    aput v2, v0, v1

    const/16 v1, 0x4ff

    aput v3, v0, v1

    const/16 v1, 0x500

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x502

    aput v4, v0, v1

    const/16 v1, 0x503

    const/16 v2, 0xab

    aput v2, v0, v1

    const/16 v1, 0x505

    .line 163
    aput v3, v0, v1

    const/16 v1, 0x506

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x508

    aput v3, v0, v1

    const/16 v1, 0x509

    const/16 v2, 0x85

    aput v2, v0, v1

    const/16 v1, 0x50b

    aput v3, v0, v1

    const/16 v1, 0x50c

    const/16 v2, 0x45

    aput v2, v0, v1

    const/16 v1, 0x50e

    aput v4, v0, v1

    const/16 v1, 0x50f

    const/16 v2, 0xeb

    aput v2, v0, v1

    const/16 v1, 0x510

    .line 164
    aput v6, v0, v1

    const/16 v1, 0x511

    aput v5, v0, v1

    const/16 v1, 0x512

    aput v3, v0, v1

    const/16 v1, 0x514

    aput v3, v0, v1

    const/16 v1, 0x515

    const/16 v2, 0x5d

    aput v2, v0, v1

    const/16 v1, 0x517

    aput v3, v0, v1

    const/16 v1, 0x518

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x51a

    aput v4, v0, v1

    const/16 v1, 0x51b

    const/16 v2, 0x9b

    aput v2, v0, v1

    const/16 v1, 0x51c

    .line 165
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x51d

    aput v5, v0, v1

    const/16 v1, 0x51e

    aput v7, v0, v1

    const/16 v1, 0x520

    aput v3, v0, v1

    const/16 v1, 0x521

    const/16 v2, 0x7d

    aput v2, v0, v1

    const/16 v1, 0x523

    aput v3, v0, v1

    const/16 v1, 0x524

    const/16 v2, 0x3d

    aput v2, v0, v1

    const/16 v1, 0x526

    aput v4, v0, v1

    const/16 v1, 0x527

    const/16 v2, 0xdb

    aput v2, v0, v1

    const/16 v1, 0x528

    .line 166
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x529

    aput v5, v0, v1

    const/16 v1, 0x52a

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x52c

    aput v3, v0, v1

    const/16 v1, 0x52d

    const/16 v2, 0x6d

    aput v2, v0, v1

    const/16 v1, 0x52f

    aput v3, v0, v1

    const/16 v1, 0x530

    const/16 v2, 0x2d

    aput v2, v0, v1

    const/16 v1, 0x532

    aput v4, v0, v1

    const/16 v1, 0x533

    const/16 v2, 0xbb

    aput v2, v0, v1

    const/16 v1, 0x535

    .line 167
    aput v3, v0, v1

    const/16 v1, 0x536

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x538

    aput v3, v0, v1

    const/16 v1, 0x539

    const/16 v2, 0x8d

    aput v2, v0, v1

    const/16 v1, 0x53b

    aput v3, v0, v1

    const/16 v1, 0x53c

    const/16 v2, 0x4d

    aput v2, v0, v1

    const/16 v1, 0x53e

    aput v4, v0, v1

    const/16 v1, 0x53f

    const/16 v2, 0xfb

    aput v2, v0, v1

    const/16 v1, 0x540

    .line 168
    aput v6, v0, v1

    const/16 v1, 0x541

    aput v5, v0, v1

    const/16 v1, 0x542

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x544

    aput v3, v0, v1

    const/16 v1, 0x545

    aput v7, v0, v1

    const/16 v1, 0x547

    aput v3, v0, v1

    const/16 v1, 0x548

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x549

    const/16 v2, 0x55

    aput v2, v0, v1

    const/16 v1, 0x54a

    aput v3, v0, v1

    const/16 v1, 0x54b

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x54c

    .line 169
    aput v7, v0, v1

    const/16 v1, 0x54d

    aput v5, v0, v1

    const/16 v1, 0x54e

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x550

    aput v3, v0, v1

    const/16 v1, 0x551

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0x553

    aput v3, v0, v1

    const/16 v1, 0x554

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x556

    aput v4, v0, v1

    const/16 v1, 0x557

    const/16 v2, 0xc7

    aput v2, v0, v1

    const/16 v1, 0x558

    .line 170
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x559

    aput v5, v0, v1

    const/16 v1, 0x55a

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x55c

    aput v3, v0, v1

    const/16 v1, 0x55d

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x55f

    aput v3, v0, v1

    const/16 v1, 0x560

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x562

    aput v4, v0, v1

    const/16 v1, 0x563

    const/16 v2, 0xa7

    aput v2, v0, v1

    const/16 v1, 0x565

    .line 171
    aput v3, v0, v1

    const/16 v1, 0x566

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x568

    aput v3, v0, v1

    const/16 v1, 0x569

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x56b

    aput v3, v0, v1

    const/16 v1, 0x56c

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x56e

    aput v4, v0, v1

    const/16 v1, 0x56f

    const/16 v2, 0xe7

    aput v2, v0, v1

    const/16 v1, 0x570

    .line 172
    aput v6, v0, v1

    const/16 v1, 0x571

    aput v5, v0, v1

    const/16 v1, 0x572

    aput v5, v0, v1

    const/16 v1, 0x574

    aput v3, v0, v1

    const/16 v1, 0x575

    const/16 v2, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x577

    aput v3, v0, v1

    const/16 v1, 0x578

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x57a

    aput v4, v0, v1

    const/16 v1, 0x57b

    const/16 v2, 0x97

    aput v2, v0, v1

    const/16 v1, 0x57c

    .line 173
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x57d

    aput v5, v0, v1

    const/16 v1, 0x57e

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x580

    aput v3, v0, v1

    const/16 v1, 0x581

    const/16 v2, 0x7b

    aput v2, v0, v1

    const/16 v1, 0x583

    aput v3, v0, v1

    const/16 v1, 0x584

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x586

    aput v4, v0, v1

    const/16 v1, 0x587

    const/16 v2, 0xd7

    aput v2, v0, v1

    const/16 v1, 0x588

    .line 174
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x589

    aput v5, v0, v1

    const/16 v1, 0x58a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x58c

    aput v3, v0, v1

    const/16 v1, 0x58d

    const/16 v2, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x58f

    aput v3, v0, v1

    const/16 v1, 0x590

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x592

    aput v4, v0, v1

    const/16 v1, 0x593

    const/16 v2, 0xb7

    aput v2, v0, v1

    const/16 v1, 0x595

    .line 175
    aput v3, v0, v1

    const/16 v1, 0x596

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x598

    aput v3, v0, v1

    const/16 v1, 0x599

    const/16 v2, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x59b

    aput v3, v0, v1

    const/16 v1, 0x59c

    const/16 v2, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x59e

    aput v4, v0, v1

    const/16 v1, 0x59f

    const/16 v2, 0xf7

    aput v2, v0, v1

    const/16 v1, 0x5a0

    .line 176
    aput v6, v0, v1

    const/16 v1, 0x5a1

    aput v5, v0, v1

    const/16 v1, 0x5a2

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x5a4

    aput v3, v0, v1

    const/16 v1, 0x5a5

    const/16 v2, 0x57

    aput v2, v0, v1

    const/16 v1, 0x5a7

    aput v3, v0, v1

    const/16 v1, 0x5a8

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x5a9

    const/16 v2, 0xc0

    aput v2, v0, v1

    const/16 v1, 0x5aa

    aput v3, v0, v1

    const/16 v1, 0x5ac

    .line 177
    aput v7, v0, v1

    const/16 v1, 0x5ad

    aput v5, v0, v1

    const/16 v1, 0x5ae

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x5b0

    aput v3, v0, v1

    const/16 v1, 0x5b1

    const/16 v2, 0x77

    aput v2, v0, v1

    const/16 v1, 0x5b3

    aput v3, v0, v1

    const/16 v1, 0x5b4

    const/16 v2, 0x37

    aput v2, v0, v1

    const/16 v1, 0x5b6

    aput v4, v0, v1

    const/16 v1, 0x5b7

    const/16 v2, 0xcf

    aput v2, v0, v1

    const/16 v1, 0x5b8

    .line 178
    const/16 v2, 0x51

    aput v2, v0, v1

    const/16 v1, 0x5b9

    aput v5, v0, v1

    const/16 v1, 0x5ba

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x5bc

    aput v3, v0, v1

    const/16 v1, 0x5bd

    const/16 v2, 0x67

    aput v2, v0, v1

    const/16 v1, 0x5bf

    aput v3, v0, v1

    const/16 v1, 0x5c0

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x5c2

    aput v4, v0, v1

    const/16 v1, 0x5c3

    const/16 v2, 0xaf

    aput v2, v0, v1

    const/16 v1, 0x5c5

    .line 179
    aput v3, v0, v1

    const/16 v1, 0x5c6

    aput v5, v0, v1

    const/16 v1, 0x5c8

    aput v3, v0, v1

    const/16 v1, 0x5c9

    const/16 v2, 0x87

    aput v2, v0, v1

    const/16 v1, 0x5cb

    aput v3, v0, v1

    const/16 v1, 0x5cc

    const/16 v2, 0x47

    aput v2, v0, v1

    const/16 v1, 0x5ce

    aput v4, v0, v1

    const/16 v1, 0x5cf

    const/16 v2, 0xef

    aput v2, v0, v1

    const/16 v1, 0x5d0

    .line 180
    aput v6, v0, v1

    const/16 v1, 0x5d1

    aput v5, v0, v1

    const/16 v1, 0x5d2

    aput v4, v0, v1

    const/16 v1, 0x5d4

    aput v3, v0, v1

    const/16 v1, 0x5d5

    const/16 v2, 0x5f

    aput v2, v0, v1

    const/16 v1, 0x5d7

    aput v3, v0, v1

    const/16 v1, 0x5d8

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x5da

    aput v4, v0, v1

    const/16 v1, 0x5db

    const/16 v2, 0x9f

    aput v2, v0, v1

    const/16 v1, 0x5dc

    .line 181
    const/16 v2, 0x54

    aput v2, v0, v1

    const/16 v1, 0x5dd

    aput v5, v0, v1

    const/16 v1, 0x5de

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x5e0

    aput v3, v0, v1

    const/16 v1, 0x5e1

    const/16 v2, 0x7f

    aput v2, v0, v1

    const/16 v1, 0x5e3

    aput v3, v0, v1

    const/16 v1, 0x5e4

    const/16 v2, 0x3f

    aput v2, v0, v1

    const/16 v1, 0x5e6

    aput v4, v0, v1

    const/16 v1, 0x5e7

    const/16 v2, 0xdf

    aput v2, v0, v1

    const/16 v1, 0x5e8

    .line 182
    const/16 v2, 0x52

    aput v2, v0, v1

    const/16 v1, 0x5e9

    aput v5, v0, v1

    const/16 v1, 0x5ea

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x5ec

    aput v3, v0, v1

    const/16 v1, 0x5ed

    const/16 v2, 0x6f

    aput v2, v0, v1

    const/16 v1, 0x5ef

    aput v3, v0, v1

    const/16 v1, 0x5f0

    const/16 v2, 0x2f

    aput v2, v0, v1

    const/16 v1, 0x5f2

    aput v4, v0, v1

    const/16 v1, 0x5f3

    const/16 v2, 0xbf

    aput v2, v0, v1

    const/16 v1, 0x5f5

    .line 183
    aput v3, v0, v1

    const/16 v1, 0x5f6

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x5f8

    aput v3, v0, v1

    const/16 v1, 0x5f9

    const/16 v2, 0x8f

    aput v2, v0, v1

    const/16 v1, 0x5fb

    aput v3, v0, v1

    const/16 v1, 0x5fc

    const/16 v2, 0x4f

    aput v2, v0, v1

    const/16 v1, 0x5fe

    aput v4, v0, v1

    const/16 v1, 0x5ff

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 54
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->fixed_tl:[I

    .line 185
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/InfTree;->fixed_td:[I

    .line 197
    const/16 v0, 0x1f

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 198
    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v5, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/16 v1, 0xa

    aput v1, v0, v5

    const/16 v1, 0xb

    aput v1, v0, v3

    const/16 v1, 0xd

    aput v1, v0, v4

    const/16 v1, 0xa

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 199
    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x33

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x43

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v7, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x63

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x73

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x83

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xa3

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0xc3

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x102

    aput v2, v0, v1

    .line 197
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cplens:[I

    .line 203
    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 204
    const/4 v1, 0x1

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v1, v0, v4

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 205
    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x70

    aput v2, v0, v1

    .line 203
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cplext:[I

    .line 208
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cpdist:[I

    .line 214
    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/4 v1, 0x4

    .line 215
    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v5

    const/4 v1, 0x3

    aput v1, v0, v3

    const/4 v1, 0x3

    aput v1, v0, v4

    const/16 v1, 0xa

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 216
    aput v5, v0, v1

    const/16 v1, 0x11

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v4, v0, v1

    const/16 v1, 0x15

    aput v4, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 217
    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 214
    sput-object v0, Lcom/jcraft/jzlib/InfTree;->cpdext:[I

    .line 37
    return-void

    .line 185
    nop

    :array_0
    .array-data 0x4
        0x50t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x10t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x40t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x2t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x20t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x8t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x60t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x18t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x6t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x60t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0xct 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x60t 0x0t 0x0t
    .end array-data

    .line 208
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x81t 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0x1t 0x2t 0x0t 0x0t
        0x1t 0x3t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x1t 0x6t 0x0t 0x0t
        0x1t 0x8t 0x0t 0x0t
        0x1t 0xct 0x0t 0x0t
        0x1t 0x10t 0x0t 0x0t
        0x1t 0x18t 0x0t 0x0t
        0x1t 0x20t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x1t 0x40t 0x0t 0x0t
        0x1t 0x60t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 223
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 224
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 225
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    .line 226
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    .line 227
    iput-object v0, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    .line 37
    return-void
.end method

.method private huft_build([IIII[I[I[I[I[I[I[I)I
    .locals 26
    .parameter "b"
    .parameter "bindex"
    .parameter "n"
    .parameter "s"
    .parameter "d"
    .parameter "e"
    .parameter "t"
    .parameter "m"
    .parameter "hp"
    .parameter "hn"
    .parameter "v"

    .prologue
    .line 265
    const/4 v15, 0x0

    .local v15, p:I
    move/from16 v10, p3

    .line 267
    .local v10, i:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    add-int v23, p2, v15

    aget v23, p1, v23

    aget v24, v22, v23

    add-int/lit8 v24, v24, 0x1

    aput v24, v22, v23

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 268
    if-nez v10, :cond_0

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 271
    const/16 v22, 0x0

    const/16 v23, -0x1

    aput v23, p7, v22

    .line 272
    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, p8, v22

    .line 273
    const/16 v22, 0x0

    .line 416
    :goto_0
    return v22

    .line 277
    :cond_1
    const/16 v22, 0x0

    aget v13, p8, v22

    .line 278
    .local v13, l:I
    const/4 v11, 0x1

    .local v11, j:I
    :goto_1
    const/16 v22, 0xf

    move/from16 v0, v22

    if-le v11, v0, :cond_6

    .line 280
    :cond_2
    move v12, v11

    .line 281
    .local v12, k:I
    if-ge v13, v11, :cond_3

    .line 282
    move v13, v11

    .line 284
    :cond_3
    const/16 v10, 0xf

    :goto_2
    if-nez v10, :cond_7

    .line 287
    :cond_4
    move v8, v10

    .line 288
    .local v8, g:I
    if-le v13, v10, :cond_5

    .line 289
    move v13, v10

    .line 291
    :cond_5
    const/16 v22, 0x0

    aput v13, p8, v22

    .line 294
    const/16 v22, 0x1

    shl-int v20, v22, v11

    .local v20, y:I
    :goto_3
    if-lt v11, v10, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    sub-int v20, v20, v22

    if-gez v20, :cond_a

    .line 300
    const/16 v22, -0x3

    goto :goto_0

    .line 279
    .end local v8           #g:I
    .end local v12           #k:I
    .end local v20           #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    if-nez v22, :cond_2

    .line 278
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 285
    .restart local v12       #k:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v10

    if-nez v22, :cond_4

    .line 284
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 295
    .restart local v8       #g:I
    .restart local v20       #y:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    sub-int v20, v20, v22

    if-gez v20, :cond_9

    .line 296
    const/16 v22, -0x3

    goto :goto_0

    .line 294
    :cond_9
    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v23, v22, v10

    add-int v23, v23, v20

    aput v23, v22, v10

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/4 v11, 0x0

    aput v11, v22, v23

    .line 306
    const/4 v15, 0x1

    const/16 v19, 0x2

    .line 307
    .local v19, xp:I
    :goto_4
    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_d

    .line 314
    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 316
    :cond_b
    add-int v22, p2, v15

    aget v11, p1, v22

    if-eqz v11, :cond_c

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aget v23, v22, v11

    add-int/lit8 v24, v23, 0x1

    aput v24, v22, v11

    aput v10, p11, v23

    .line 319
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 321
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p3

    if-lt v10, v0, :cond_b

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aget p3, v22, v8

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/4 v10, 0x0

    aput v10, v22, v23

    .line 326
    const/4 v15, 0x0

    .line 327
    const/4 v9, -0x1

    .line 328
    .local v9, h:I
    neg-int v0, v13

    move/from16 v18, v0

    .line 329
    .local v18, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 330
    const/16 v17, 0x0

    .line 331
    .local v17, q:I
    const/16 v21, 0x0

    .line 334
    .local v21, z:I
    :goto_5
    if-le v12, v8, :cond_e

    .line 416
    if-eqz v20, :cond_1c

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_1c

    const/16 v22, -0x5

    goto/16 :goto_0

    .line 308
    .end local v9           #h:I
    .end local v17           #q:I
    .end local v18           #w:I
    .end local v21           #z:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    add-int v11, v11, v23

    aput v11, v22, v19

    .line 309
    add-int/lit8 v19, v19, 0x1

    .line 310
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 335
    .restart local v9       #h:I
    .restart local v17       #q:I
    .restart local v18       #w:I
    .restart local v21       #z:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v5, v22, v12

    .local v5, a:I
    move/from16 v16, v15

    .end local v15           #p:I
    .local v16, p:I
    move v6, v5

    .line 336
    .end local v5           #a:I
    .local v6, a:I
    :goto_6
    add-int/lit8 v5, v6, -0x1

    .end local v6           #a:I
    .restart local v5       #a:I
    if-nez v6, :cond_14

    .line 334
    add-int/lit8 v12, v12, 0x1

    move/from16 v15, v16

    .end local v16           #p:I
    .restart local v15       #p:I
    goto :goto_5

    .line 340
    .end local v15           #p:I
    .restart local v16       #p:I
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 341
    add-int v18, v18, v13

    .line 343
    sub-int v21, v8, v18

    .line 344
    move/from16 v0, v21

    if-le v0, v13, :cond_10

    move/from16 v21, v13

    .line 345
    :cond_10
    const/16 v22, 0x1

    sub-int v11, v12, v18

    shl-int v7, v22, v11

    .local v7, f:I
    add-int/lit8 v22, v5, 0x1

    move/from16 v0, v22

    if-le v7, v0, :cond_11

    .line 347
    add-int/lit8 v22, v5, 0x1

    sub-int v7, v7, v22

    .line 348
    move/from16 v19, v12

    .line 349
    move/from16 v0, v21

    if-ge v11, v0, :cond_11

    .line 350
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v21

    if-lt v11, v0, :cond_12

    .line 357
    :cond_11
    const/16 v22, 0x1

    shl-int v21, v22, v11

    .line 360
    const/16 v22, 0x0

    aget v22, p10, v22

    add-int v22, v22, v21

    const/16 v23, 0x5a0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 361
    const/16 v22, -0x3

    move/from16 v15, v16

    .end local v16           #p:I
    .restart local v15       #p:I
    goto/16 :goto_0

    .line 351
    .end local v15           #p:I
    .restart local v16       #p:I
    :cond_12
    shl-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    add-int/lit8 v19, v19, 0x1

    aget v22, v22, v19

    move/from16 v0, v22

    if-le v7, v0, :cond_11

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->c:[I

    move-object/from16 v22, v0

    aget v22, v22, v19

    sub-int v7, v7, v22

    goto :goto_7

    .line 363
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v17, p10, v23

    aput v17, v22, v9

    .line 364
    const/16 v22, 0x0

    aget v23, p10, v22

    add-int v23, v23, v21

    aput v23, p10, v22

    .line 367
    if-eqz v9, :cond_15

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v22, v0

    aput v10, v22, v9

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    int-to-byte v0, v11

    move/from16 v24, v0

    aput v24, v22, v23

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    int-to-byte v0, v13

    move/from16 v24, v0

    aput v24, v22, v23

    .line 371
    sub-int v22, v18, v13

    ushr-int v11, v10, v22

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, -0x1

    aget v24, v24, v25

    sub-int v24, v17, v24

    sub-int v24, v24, v11

    aput v24, v22, v23

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->u:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, -0x1

    aget v24, v24, v25

    add-int v24, v24, v11

    mul-int/lit8 v24, v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    .end local v7           #f:I
    :cond_14
    :goto_8
    add-int v22, v18, v13

    move/from16 v0, v22

    if-gt v12, v0, :cond_f

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v24, v12, v18

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 382
    move/from16 v0, v16

    move/from16 v1, p3

    if-lt v0, v1, :cond_16

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0xc0

    aput v24, v22, v23

    move/from16 v15, v16

    .line 395
    .end local v16           #p:I
    .restart local v15       #p:I
    :goto_9
    const/16 v22, 0x1

    sub-int v23, v12, v18

    shl-int v7, v22, v23

    .line 396
    .restart local v7       #f:I
    ushr-int v11, v10, v18

    :goto_a
    move/from16 v0, v21

    if-lt v11, v0, :cond_19

    .line 401
    const/16 v22, 0x1

    add-int/lit8 v23, v12, -0x1

    shl-int v11, v22, v23

    :goto_b
    and-int v22, v10, v11

    if-nez v22, :cond_1a

    .line 404
    xor-int/2addr v10, v11

    .line 407
    const/16 v22, 0x1

    shl-int v22, v22, v18

    add-int/lit8 v14, v22, -0x1

    .line 408
    .local v14, mask:I
    :goto_c
    and-int v22, v10, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->x:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    move/from16 v16, v15

    .end local v15           #p:I
    .restart local v16       #p:I
    move v6, v5

    .end local v5           #a:I
    .restart local v6       #a:I
    goto/16 :goto_6

    .line 376
    .end local v6           #a:I
    .end local v14           #mask:I
    .restart local v5       #a:I
    :cond_15
    const/16 v22, 0x0

    aput v17, p7, v22

    goto :goto_8

    .line 385
    .end local v7           #f:I
    :cond_16
    aget v22, p11, v16

    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_18

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v22, p11, v16

    const/16 v25, 0x100

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    const/16 v22, 0x0

    :goto_d
    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput v22, v23, v24

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    add-int/lit8 v15, v16, 0x1

    .end local v16           #p:I
    .restart local v15       #p:I
    aget v24, p11, v16

    aput v24, v22, v23

    goto :goto_9

    .line 386
    .end local v15           #p:I
    .restart local v16       #p:I
    :cond_17
    const/16 v22, 0x60

    goto :goto_d

    .line 390
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v24, p11, v16

    sub-int v24, v24, p4

    aget v24, p6, v24

    add-int/lit8 v24, v24, 0x10

    add-int/lit8 v24, v24, 0x40

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    add-int/lit8 v15, v16, 0x1

    .end local v16           #p:I
    .restart local v15       #p:I
    aget v24, p11, v16

    sub-int v24, v24, p4

    aget v24, p5, v24

    aput v24, v22, v23

    goto/16 :goto_9

    .line 397
    .restart local v7       #f:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfTree;->r:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    add-int v24, v17, v11

    mul-int/lit8 v24, v24, 0x3

    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    add-int/2addr v11, v7

    goto/16 :goto_a

    .line 402
    :cond_1a
    xor-int/2addr v10, v11

    .line 401
    ushr-int/lit8 v11, v11, 0x1

    goto/16 :goto_b

    .line 409
    .restart local v14       #mask:I
    :cond_1b
    add-int/lit8 v9, v9, -0x1

    .line 410
    sub-int v18, v18, v13

    .line 411
    const/16 v22, 0x1

    shl-int v22, v22, v18

    add-int/lit8 v14, v22, -0x1

    goto/16 :goto_c

    .line 416
    .end local v5           #a:I
    .end local v7           #f:I
    .end local v14           #mask:I
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method static inflate_trees_fixed([I[I[[I[[ILcom/jcraft/jzlib/ZStream;)I
    .locals 2
    .parameter "bl"
    .parameter "bd"
    .parameter "tl"
    .parameter "td"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 495
    const/16 v0, 0x9

    aput v0, p0, v1

    .line 496
    const/4 v0, 0x5

    aput v0, p1, v1

    .line 497
    sget-object v0, Lcom/jcraft/jzlib/InfTree;->fixed_tl:[I

    aput-object v0, p2, v1

    .line 498
    sget-object v0, Lcom/jcraft/jzlib/InfTree;->fixed_td:[I

    aput-object v0, p3, v1

    .line 499
    return v1
.end method

.method private initWorkArea(I)V
    .locals 6
    .parameter "vsize"

    .prologue
    const/16 v5, 0xf

    const/4 v2, 0x3

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 503
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    if-nez v1, :cond_0

    .line 504
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    .line 505
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 506
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    .line 507
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    .line 508
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    .line 509
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    .line 512
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_2

    .line 513
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_3

    .line 514
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v2, :cond_4

    .line 516
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lcom/jcraft/jzlib/InfTree;->u:[I

    invoke-static {v1, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    iget-object v2, p0, Lcom/jcraft/jzlib/InfTree;->x:[I

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    return-void

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->c:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 514
    :cond_4
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->r:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method inflate_trees_bits([I[I[I[ILcom/jcraft/jzlib/ZStream;)I
    .locals 14
    .parameter "c"
    .parameter "bb"
    .parameter "tb"
    .parameter "hp"
    .parameter "z"

    .prologue
    .line 426
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 427
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 428
    const/4 v3, 0x0

    const/16 v4, 0x13

    const/16 v5, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v12}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 430
    .local v13, result:I
    const/4 v1, -0x3

    if-ne v13, v1, :cond_1

    .line 431
    const-string v1, "oversubscribed dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 437
    :cond_0
    :goto_0
    return v13

    .line 433
    :cond_1
    const/4 v1, -0x5

    if-eq v13, v1, :cond_2

    const/4 v1, 0x0

    aget v1, p2, v1

    if-nez v1, :cond_0

    .line 434
    :cond_2
    const-string v1, "incomplete dynamic bit lengths tree"

    move-object/from16 v0, p5

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 435
    const/4 v13, -0x3

    goto :goto_0
.end method

.method inflate_trees_dynamic(II[I[I[I[I[I[ILcom/jcraft/jzlib/ZStream;)I
    .locals 14
    .parameter "nl"
    .parameter "nd"
    .parameter "c"
    .parameter "bl"
    .parameter "bd"
    .parameter "tl"
    .parameter "td"
    .parameter "hp"
    .parameter "z"

    .prologue
    .line 453
    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 454
    iget-object v1, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 455
    const/4 v3, 0x0

    const/16 v5, 0x101

    sget-object v6, Lcom/jcraft/jzlib/InfTree;->cplens:[I

    sget-object v7, Lcom/jcraft/jzlib/InfTree;->cplext:[I

    iget-object v11, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v4, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 456
    .local v13, result:I
    if-nez v13, :cond_0

    const/4 v1, 0x0

    aget v1, p4, v1

    if-nez v1, :cond_3

    .line 457
    :cond_0
    const/4 v1, -0x3

    if-ne v13, v1, :cond_2

    .line 458
    const-string v1, "oversubscribed literal/length tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_1
    :goto_0
    move v1, v13

    .line 486
    :goto_1
    return v1

    .line 460
    :cond_2
    const/4 v1, -0x4

    if-eq v13, v1, :cond_1

    .line 461
    const-string v1, "incomplete literal/length tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 462
    const/4 v13, -0x3

    goto :goto_0

    .line 468
    :cond_3
    const/16 v1, 0x120

    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/InfTree;->initWorkArea(I)V

    .line 469
    const/4 v5, 0x0

    sget-object v6, Lcom/jcraft/jzlib/InfTree;->cpdist:[I

    sget-object v7, Lcom/jcraft/jzlib/InfTree;->cpdext:[I

    iget-object v11, p0, Lcom/jcraft/jzlib/InfTree;->hn:[I

    iget-object v12, p0, Lcom/jcraft/jzlib/InfTree;->v:[I

    move-object v1, p0

    move-object/from16 v2, p3

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Lcom/jcraft/jzlib/InfTree;->huft_build([IIII[I[I[I[I[I[I[I)I

    move-result v13

    .line 471
    if-nez v13, :cond_4

    const/4 v1, 0x0

    aget v1, p5, v1

    if-nez v1, :cond_8

    const/16 v1, 0x101

    if-le p1, v1, :cond_8

    .line 472
    :cond_4
    const/4 v1, -0x3

    if-ne v13, v1, :cond_6

    .line 473
    const-string v1, "oversubscribed distance tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    :cond_5
    :goto_2
    move v1, v13

    .line 483
    goto :goto_1

    .line 475
    :cond_6
    const/4 v1, -0x5

    if-ne v13, v1, :cond_7

    .line 476
    const-string v1, "incomplete distance tree"

    move-object/from16 v0, p9

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 477
    const/4 v13, -0x3

    goto :goto_2

    .line 479
    :cond_7
    const/4 v1, -0x4

    if-eq v13, v1, :cond_5

    .line 480
    const-string v1, "empty distance tree with lengths"

    move-object/from16 v0, p9

    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 481
    const/4 v13, -0x3

    goto :goto_2

    .line 486
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method
