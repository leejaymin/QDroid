.class public Lkr/co/medinbiz/util/DateCounter;
.super Ljava/lang/Object;
.source "DateCounter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private now:Ljava/util/Calendar;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lkr/co/medinbiz/util/DateCounter;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 21
    const-string v0, "Asia/Seoul"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 24
    iget-object v0, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 25
    return-void
.end method


# virtual methods
.method public babyDay()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 84
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 86
    .local v0, due:Ljava/util/Calendar;
    aget-object v1, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v8, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 87
    const/4 v7, 0x0

    .line 88
    .local v7, count:I
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    return v7

    .line 89
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->add(II)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public babyMonth()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, due:Ljava/util/Calendar;
    aget-object v1, v8, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, count:I
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    return v7

    .line 73
    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 74
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public dueCount()I
    .locals 6

    .prologue
    .line 52
    iget-object v3, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 54
    .local v2, due:Ljava/util/Calendar;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, count:I
    :goto_0
    iget-object v3, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    add-int/lit8 v3, v0, -0x1

    return v3

    .line 57
    :cond_0
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dueDate()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, date:[Ljava/lang/String;
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->yearmonthday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isBabyCare()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 138
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, due:Ljava/util/Calendar;
    aget-object v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 141
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v8

    .line 144
    :cond_0
    return v4
.end method

.method public isDueDateError()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 123
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    .local v0, due:Ljava/util/Calendar;
    aget-object v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 126
    const/4 v1, 0x5

    const/16 v2, -0x118

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 127
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v8

    .line 130
    :cond_0
    return v4
.end method

.method public isSameDate()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, due:Ljava/util/Calendar;
    aget-object v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v7, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 112
    iget-object v1, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v8

    .line 115
    :cond_0
    return v4
.end method

.method public weekCount()[I
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 32
    iget-object v4, p0, Lkr/co/medinbiz/util/DateCounter;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, date:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 34
    .local v3, due:Ljava/util/Calendar;
    aget-object v4, v2, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 35
    const/16 v4, -0x118

    invoke-virtual {v3, v10, v4}, Ljava/util/Calendar;->add(II)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, count:I
    :goto_0
    iget-object v4, p0, Lkr/co/medinbiz/util/DateCounter;->now:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    new-array v1, v9, [I

    .line 42
    .local v1, counts:[I
    div-int/lit8 v4, v0, 0x7

    aput v4, v1, v8

    .line 43
    rem-int/lit8 v4, v0, 0x7

    aput v4, v1, v7

    .line 44
    return-object v1

    .line 38
    .end local v1           #counts:[I
    :cond_0
    invoke-virtual {v3, v10, v7}, Ljava/util/Calendar;->add(II)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
