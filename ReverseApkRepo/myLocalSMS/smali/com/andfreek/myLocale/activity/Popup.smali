.class public Lcom/andfreek/myLocale/activity/Popup;
.super Landroid/app/Activity;
.source "Popup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static currMsgId:Ljava/lang/String;

.field public static msg:Ljava/lang/String;

.field public static msgDate:Ljava/lang/String;

.field public static msgLang:Ljava/lang/String;

.field public static originalMsg:Ljava/lang/String;

.field public static person:Ljava/lang/String;

.field public static phoneLang:Ljava/lang/String;

.field public static replyMsg:Ljava/lang/String;

.field public static tg:Z

.field public static tg_back:Z

.field public static tv:Landroid/widget/TextView;


# instance fields
.field private addCalendar:Landroid/widget/Button;

.field private closeBut:Landroid/widget/Button;

.field public context:Landroid/content/Context;

.field private dateTime:Landroid/widget/TextView;

.field private et:Landroid/widget/EditText;

.field public imgContact:Landroid/widget/ImageView;

.field private inbox:Landroid/widget/Button;

.field mNM:Landroid/app/NotificationManager;

.field private messageBean:[Ljava/lang/String;

.field myPM:Landroid/os/PowerManager;

.field myWakeLock:Landroid/os/PowerManager$WakeLock;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field private replyBut:Landroid/widget/Button;

.field private sender:Z

.field public titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/16 v7, 0xa

    .line 81
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    iget-object v5, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->getNameForNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->name:Ljava/lang/String;

    .line 83
    const v4, 0x7f070003

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    .line 84
    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->imgContact:Landroid/widget/ImageView;

    .line 85
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->getImageForNumber(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    .line 86
    .local v0, contactPhoto:[B
    if-eqz v0, :cond_0

    .line 88
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, img:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6, v4}, Lcom/andfreek/myLocale/activity/Popup;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 96
    .end local v2           #img:Landroid/graphics/Bitmap;
    :goto_0
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    .line 97
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 98
    .local v3, sc:Landroid/widget/Scroller;
    sget-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setScroller(Landroid/widget/Scroller;)V

    .line 99
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    .line 100
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, esc:Landroid/widget/Scroller;
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setScroller(Landroid/widget/Scroller;)V

    .line 102
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 103
    const v4, 0x7f070004

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->dateTime:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f070009

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->replyBut:Landroid/widget/Button;

    .line 105
    const v4, 0x7f07000c

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->closeBut:Landroid/widget/Button;

    .line 106
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->inbox:Landroid/widget/Button;

    .line 107
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->addCalendar:Landroid/widget/Button;

    .line 109
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->replyBut:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->closeBut:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->inbox:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->addCalendar:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->dateTime:Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "From :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/andfreek/myLocale/activity/Popup;->name:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/andfreek/myLocale/activity/Popup;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/andfreek/myLocale/activity/Popup;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->addCalendar:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f06000f

    invoke-virtual {p0, v6}, Lcom/andfreek/myLocale/activity/Popup;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/16 v5, 0x14

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    sget-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    sget-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    sget-object v4, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v4, p0, Lcom/andfreek/myLocale/activity/Popup;->dateTime:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 122
    return-void

    .line 94
    .end local v1           #esc:Landroid/widget/Scroller;
    .end local v3           #sc:Landroid/widget/Scroller;
    :cond_0
    const v4, 0x1080002

    invoke-virtual {p0, v6, v4}, Lcom/andfreek/myLocale/activity/Popup;->setFeatureDrawableResource(II)V

    goto/16 :goto_0

    .line 115
    .restart local v1       #esc:Landroid/widget/Scroller;
    .restart local v3       #sc:Landroid/widget/Scroller;
    :cond_1
    iget-object v5, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    goto :goto_1
.end method

.method private setViewTitles()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const-string v5, "RAMES"

    .line 148
    const-string v1, "RAMES"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "From Popup, date="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->replyBut:Landroid/widget/Button;

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->closeBut:Landroid/widget/Button;

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 152
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->inbox:Landroid/widget/Button;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 154
    invoke-static {p0}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 158
    .local v0, tDate:Ljava/util/Date;
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->dateTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const-string v1, "RAMES"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number=========="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lcom/andfreek/myLocale/activity/Popup;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/andfreek/myLocale/activity/Popup;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 155
    .end local v0           #tDate:Ljava/util/Date;
    :cond_1
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    goto :goto_0

    .line 161
    .restart local v0       #tDate:Ljava/util/Date;
    :cond_2
    iget-object v2, p0, Lcom/andfreek/myLocale/activity/Popup;->number:Ljava/lang/String;

    goto :goto_1
.end method

.method private wakeup()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/andfreek/myLocale/activity/Popup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->myPM:Landroid/os/PowerManager;

    .line 74
    iget-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->myPM:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "My Message"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    iget-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->myWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andfreek/myLocale/db/DBManager;->setPopupState(Landroid/content/Context;Z)V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 193
    const-string v5, "RAMES"

    const-string v6, "Performed onlclick"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f07000b

    if-ne v5, v6, :cond_3

    .line 196
    const-string v5, "RAMES"

    const-string v6, "Into launching calendar"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 198
    .local v18, startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v14, v18, v5

    .line 199
    .local v14, endMillis:J
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v17, intent:Landroid/content/Intent;
    const-string v5, "com.android.calendar"

    const-string v6, "com.android.calendar.EditEvent"

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v5, "beginTime"

    move-object/from16 v0, v17

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v5, "endTime"

    move-object/from16 v0, v17

    move-object v1, v5

    move-wide v2, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    const-string v5, "allDay"

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const-string v5, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    move-object v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->titleText:Landroid/widget/TextView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v5, "description"

    invoke-static/range {p0 .. p0}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x5

    aget-object v6, v6, v7

    :goto_1
    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/andfreek/myLocale/activity/Popup;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/andfreek/myLocale/activity/Popup;->finish()V

    .line 279
    .end local v14           #endMillis:J
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #startMillis:J
    :cond_0
    :goto_2
    return-void

    .line 205
    .restart local v14       #endMillis:J
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v18       #startMillis:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    goto :goto_0

    .line 206
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v6, v6, v7

    goto :goto_1

    .line 209
    .end local v14           #endMillis:J
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #startMillis:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f070009

    if-ne v5, v6, :cond_8

    .line 211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    move v5, v0

    if-nez v5, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 214
    sget-object v5, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->replyBut:Landroid/widget/Button;

    move-object v5, v0

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->inbox:Landroid/widget/Button;

    move-object v5, v0

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 247
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    move v5, v0

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_4
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    goto :goto_2

    .line 221
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 227
    new-instance v4, Lcom/andfreek/myLocale/thread/Invoker;

    .line 228
    const-string v5, ""

    const/4 v6, 0x0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 231
    const/4 v12, 0x0

    .line 227
    invoke-direct/range {v4 .. v12}, Lcom/andfreek/myLocale/thread/Invoker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v4, in:Lcom/andfreek/myLocale/thread/Invoker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->context:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setContext(Landroid/content/Context;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->context:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setContectResolver(Landroid/content/ContentResolver;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setPhoneNumber(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/andfreek/myLocale/thread/Invoker;->setSendMessage(Ljava/lang/String;)V

    .line 237
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 239
    invoke-static/range {p0 .. p0}, Lcom/andfreek/myLocale/db/DBManager;->isTranslationEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x5

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/andfreek/myLocale/activity/util/MyMessageUtil;->updateMainMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/andfreek/myLocale/activity/Popup;->finish()V

    goto/16 :goto_3

    .line 247
    .end local v4           #in:Lcom/andfreek/myLocale/thread/Invoker;
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 248
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f07000c

    if-ne v5, v6, :cond_9

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/andfreek/myLocale/activity/Popup;->finish()V

    goto/16 :goto_2

    .line 251
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f07000a

    if-ne v5, v6, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 256
    new-instance v13, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v13, conversations:Landroid/content/Intent;
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v16, 0x3400

    .line 264
    .local v16, flags:I
    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/andfreek/myLocale/activity/Popup;->startActivity(Landroid/content/Intent;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/andfreek/myLocale/activity/Popup;->finish()V

    .line 276
    .end local v13           #conversations:Landroid/content/Intent;
    .end local v16           #flags:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    move v5, v0

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    :goto_6
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/andfreek/myLocale/activity/Popup;->sender:Z

    goto/16 :goto_2

    .line 269
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->et:Landroid/widget/EditText;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 270
    sget-object v5, Lcom/andfreek/myLocale/activity/Popup;->tv:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->replyBut:Landroid/widget/Button;

    move-object v5, v0

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andfreek/myLocale/activity/Popup;->inbox:Landroid/widget/Button;

    move-object v5, v0

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 276
    :cond_b
    const/4 v5, 0x1

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x4

    const-string v2, "RAMES"

    .line 167
    invoke-direct {p0}, Lcom/andfreek/myLocale/activity/Popup;->wakeup()V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/andfreek/myLocale/activity/Popup;->requestWindowFeature(I)Z

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andfreek/myLocale/activity/Popup;->requestWindowFeature(I)Z

    .line 171
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/andfreek/myLocale/activity/Popup;->setContentView(I)V

    .line 172
    invoke-virtual {p0}, Lcom/andfreek/myLocale/activity/Popup;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 173
    iput-object p0, p0, Lcom/andfreek/myLocale/activity/Popup;->context:Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Lcom/andfreek/myLocale/activity/Popup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->messageBean:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "RAMES"

    const-string v0, "MessageBean is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    invoke-direct {p0}, Lcom/andfreek/myLocale/activity/Popup;->initViews()V

    .line 183
    invoke-direct {p0}, Lcom/andfreek/myLocale/activity/Popup;->setViewTitles()V

    .line 188
    return-void

    .line 180
    :cond_0
    const-string v0, "RAMES"

    const-string v0, "MessageBean is NOT null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/andfreek/myLocale/db/DBManager;->setPopupState(Landroid/content/Context;Z)V

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 134
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/andfreek/myLocale/activity/Popup;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/andfreek/myLocale/db/DBManager;->setPopupState(Landroid/content/Context;Z)V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 128
    return-void
.end method
