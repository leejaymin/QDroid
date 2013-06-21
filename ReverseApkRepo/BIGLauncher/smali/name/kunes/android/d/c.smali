.class public final Lname/kunes/android/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static b:I


# instance fields
.field private final c:Lname/kunes/android/launcher/service/SmsDeliveryService;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/ContentResolver;

.field private final f:Ljava/lang/String;

.field private g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lname/kunes/android/d/c;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lname/kunes/android/d/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lname/kunes/android/launcher/service/SmsDeliveryService;->a:Lname/kunes/android/launcher/service/SmsDeliveryService;

    iput-object v0, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    iput-object p1, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    iget-object v0, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    invoke-virtual {v0}, Lname/kunes/android/launcher/service/SmsDeliveryService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/d/c;->e:Landroid/content/ContentResolver;

    iput-object p2, p0, Lname/kunes/android/d/c;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lname/kunes/android/d/c;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lname/kunes/android/d/c;)Lname/kunes/android/launcher/service/SmsDeliveryService;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lname/kunes/android/d/c;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lname/kunes/android/d/c;->g:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Lname/kunes/android/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lname/kunes/android/d/c;I)V
    .locals 5

    const/16 v0, 0x20

    iget-object v1, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lname/kunes/android/d/c;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lname/kunes/android/d/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/d/c;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lname/kunes/android/d/c;->f:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lname/kunes/android/d/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lname/kunes/android/d/c;I)V
    .locals 2

    const/16 v0, 0x40

    iget-object v1, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lname/kunes/android/d/c;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lname/kunes/android/c/j;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/d/c;->g:Landroid/net/Uri;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget v1, Lname/kunes/android/d/c;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lname/kunes/android/d/c;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMS_SENT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lname/kunes/android/d/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SMS_DELIVERED"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lname/kunes/android/d/c;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lname/kunes/android/d/d;

    invoke-direct {v2, p0}, Lname/kunes/android/d/d;-><init>(Lname/kunes/android/d/c;)V

    new-instance v4, Lname/kunes/android/d/e;

    invoke-direct {v4, p0}, Lname/kunes/android/d/e;-><init>(Lname/kunes/android/d/c;)V

    sget-object v7, Lname/kunes/android/d/c;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v8}, Lname/kunes/android/launcher/service/SmsDeliveryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lname/kunes/android/d/c;->c:Lname/kunes/android/launcher/service/SmsDeliveryService;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v7}, Lname/kunes/android/launcher/service/SmsDeliveryService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {p0, v1}, Lname/kunes/android/d/c;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, v5}, Lname/kunes/android/d/c;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lname/kunes/android/d/c;->d:Landroid/content/Context;

    const v1, 0x7f06011d

    invoke-static {v0, v1}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method
