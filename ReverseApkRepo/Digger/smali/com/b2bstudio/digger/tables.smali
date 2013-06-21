.class abstract Lcom/b2bstudio/digger/tables;
.super Ljava/lang/Object;
.source "tables.java"


# static fields
.field static table:[[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/16 v0, 0xe2

    new-array v0, v0, [[S

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/b2bstudio/digger/mask;->ediggermask:[S

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 7
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger1:[S

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger1mask:[S

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 8
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger2:[S

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger2mask:[S

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 9
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger3:[S

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 10
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 11
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 12
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 13
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 14
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 15
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 16
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 17
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 18
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 19
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 20
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 21
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 22
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 23
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 24
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 25
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 26
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 27
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 28
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 29
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 30
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 31
    sget-object v2, Lcom/b2bstudio/digger/mask;->diggerd:[S

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/b2bstudio/digger/mask;->diggerdmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 32
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 33
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 34
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 35
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave4:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave4mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 36
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave5:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave5mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    .line 38
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/b2bstudio/digger/mask;->ediggermask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 39
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 40
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x44

    .line 41
    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/b2bstudio/digger/mask;->rdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x46

    .line 42
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x48

    .line 43
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 44
    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/b2bstudio/digger/mask;->rxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 45
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    .line 46
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x50

    .line 47
    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lcom/b2bstudio/digger/mask;->udigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x52

    .line 48
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x54

    .line 49
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 50
    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lcom/b2bstudio/digger/mask;->uxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x58

    .line 51
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 52
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    .line 53
    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lcom/b2bstudio/digger/mask;->ldigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    .line 54
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x60

    .line 55
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x62

    .line 56
    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lcom/b2bstudio/digger/mask;->lxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 57
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x66

    .line 58
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 59
    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lcom/b2bstudio/digger/mask;->ddigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    .line 60
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    .line 61
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    .line 62
    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lcom/b2bstudio/digger/mask;->dxdigger3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x70

    .line 63
    sget-object v2, Lcom/b2bstudio/digger/mask;->diggerd:[S

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lcom/b2bstudio/digger/mask;->diggerdmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x72

    .line 64
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x74

    .line 65
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x76

    .line 66
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 67
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave4:[S

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave4mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 68
    sget-object v2, Lcom/b2bstudio/digger/grave;->grave5:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lcom/b2bstudio/digger/grave;->grave5mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    .line 70
    sget-object v2, Lcom/b2bstudio/digger/grave;->sbag:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Lcom/b2bstudio/digger/grave;->sbagmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    .line 71
    sget-object v2, Lcom/b2bstudio/digger/grave;->rbag:[S

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    sget-object v2, Lcom/b2bstudio/digger/grave;->rbagmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x80

    .line 72
    sget-object v2, Lcom/b2bstudio/digger/grave;->lbag:[S

    aput-object v2, v0, v1

    const/16 v1, 0x81

    sget-object v2, Lcom/b2bstudio/digger/grave;->lbagmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x82

    .line 73
    sget-object v2, Lcom/b2bstudio/digger/grave;->fbag:[S

    aput-object v2, v0, v1

    const/16 v1, 0x83

    sget-object v2, Lcom/b2bstudio/digger/grave;->fbagmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x84

    .line 74
    sget-object v2, Lcom/b2bstudio/digger/grave;->gold1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x85

    sget-object v2, Lcom/b2bstudio/digger/grave;->gold1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x86

    .line 75
    sget-object v2, Lcom/b2bstudio/digger/grave;->gold2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x87

    sget-object v2, Lcom/b2bstudio/digger/grave;->gold2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x88

    .line 76
    sget-object v2, Lcom/b2bstudio/digger/grave;->gold3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x89

    sget-object v2, Lcom/b2bstudio/digger/grave;->gold3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    .line 78
    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 79
    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    .line 80
    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    sget-object v2, Lcom/b2bstudio/digger/body;->nobbin3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x90

    .line 81
    sget-object v2, Lcom/b2bstudio/digger/body;->nobbind:[S

    aput-object v2, v0, v1

    const/16 v1, 0x91

    sget-object v2, Lcom/b2bstudio/digger/body;->nobbindmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x92

    .line 82
    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x93

    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x94

    .line 83
    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x95

    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 84
    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x97

    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbin3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x98

    .line 85
    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbind:[S

    aput-object v2, v0, v1

    const/16 v1, 0x99

    sget-object v2, Lcom/b2bstudio/digger/body;->rhobbindmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    .line 86
    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin1:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    .line 87
    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin2:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 88
    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin3:[S

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbin3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    .line 89
    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbind:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    sget-object v2, Lcom/b2bstudio/digger/body;->lhobbindmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    .line 91
    sget-object v2, Lcom/b2bstudio/digger/body;->bonus:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    sget-object v2, Lcom/b2bstudio/digger/mask;->ediggermask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    .line 93
    sget-object v2, Lcom/b2bstudio/digger/body;->fire1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    sget-object v2, Lcom/b2bstudio/digger/body;->fire1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    .line 94
    sget-object v2, Lcom/b2bstudio/digger/body;->fire2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    sget-object v2, Lcom/b2bstudio/digger/body;->fire2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    .line 95
    sget-object v2, Lcom/b2bstudio/digger/body;->fire3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    sget-object v2, Lcom/b2bstudio/digger/body;->fire3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    .line 96
    sget-object v2, Lcom/b2bstudio/digger/body;->exp1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xab

    sget-object v2, Lcom/b2bstudio/digger/body;->exp1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xac

    .line 97
    sget-object v2, Lcom/b2bstudio/digger/body;->exp2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xad

    sget-object v2, Lcom/b2bstudio/digger/body;->exp2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xae

    .line 98
    sget-object v2, Lcom/b2bstudio/digger/body;->exp3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    sget-object v2, Lcom/b2bstudio/digger/body;->exp3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 100
    sget-object v2, Lcom/b2bstudio/digger/body;->fire1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    sget-object v2, Lcom/b2bstudio/digger/body;->fire1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    .line 101
    sget-object v2, Lcom/b2bstudio/digger/body;->fire2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    sget-object v2, Lcom/b2bstudio/digger/body;->fire2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    .line 102
    sget-object v2, Lcom/b2bstudio/digger/body;->fire3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    sget-object v2, Lcom/b2bstudio/digger/body;->fire3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    .line 103
    sget-object v2, Lcom/b2bstudio/digger/body;->exp1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    sget-object v2, Lcom/b2bstudio/digger/body;->exp1mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    .line 104
    sget-object v2, Lcom/b2bstudio/digger/body;->exp2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    sget-object v2, Lcom/b2bstudio/digger/body;->exp2mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xba

    .line 105
    sget-object v2, Lcom/b2bstudio/digger/body;->exp3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    sget-object v2, Lcom/b2bstudio/digger/body;->exp3mask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    .line 107
    sget-object v2, Lcom/b2bstudio/digger/body;->back1:[S

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    .line 108
    sget-object v2, Lcom/b2bstudio/digger/body;->back2:[S

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    .line 109
    sget-object v2, Lcom/b2bstudio/digger/body;->back3:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 110
    sget-object v2, Lcom/b2bstudio/digger/body;->back4:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    .line 111
    sget-object v2, Lcom/b2bstudio/digger/body;->back5:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    .line 112
    sget-object v2, Lcom/b2bstudio/digger/body;->back6:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    .line 113
    sget-object v2, Lcom/b2bstudio/digger/body;->back7:[S

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xca

    .line 114
    sget-object v2, Lcom/b2bstudio/digger/body;->back8:[S

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    .line 116
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    sget-object v2, Lcom/b2bstudio/digger/body;->rightblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xce

    .line 117
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    sget-object v2, Lcom/b2bstudio/digger/body;->topblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    .line 118
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    sget-object v2, Lcom/b2bstudio/digger/body;->leftblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    .line 119
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    sget-object v2, Lcom/b2bstudio/digger/body;->bottomblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 120
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    sget-object v2, Lcom/b2bstudio/digger/body;->squareblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    .line 121
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    sget-object v2, Lcom/b2bstudio/digger/body;->furryblobmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    .line 123
    sget-object v2, Lcom/b2bstudio/digger/grave;->emerald:[S

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    sget-object v2, Lcom/b2bstudio/digger/grave;->emeraldmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xda

    .line 124
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    sget-object v2, Lcom/b2bstudio/digger/grave;->emeraldmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    .line 126
    sget-object v2, Lcom/b2bstudio/digger/grave;->liferight:[S

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    sget-object v2, Lcom/b2bstudio/digger/grave;->liferightmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xde

    .line 127
    sget-object v2, Lcom/b2bstudio/digger/grave;->lifeleft:[S

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    sget-object v2, Lcom/b2bstudio/digger/grave;->lifeleftmask:[S

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    .line 128
    sget-object v2, Lcom/b2bstudio/digger/mask;->zero60:[S

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    sget-object v2, Lcom/b2bstudio/digger/grave;->elifemask:[S

    aput-object v2, v0, v1

    .line 5
    sput-object v0, Lcom/b2bstudio/digger/tables;->table:[[S

    .line 3
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
