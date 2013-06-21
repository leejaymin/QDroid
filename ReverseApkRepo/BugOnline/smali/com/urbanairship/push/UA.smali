.class public Lcom/urbanairship/push/UA;
.super Ljava/lang/Object;


# static fields
.field static final ACTION_ACCEPT_PUSH:Ljava/lang/String; = "com.urbanairship.airmail.ACCEPT_PUSH"

.field static final ACTION_END_REGISTER:Ljava/lang/String; = "com.urbanairship.airmail.END_REGISTER"

.field static final ACTION_NOTIFY:Ljava/lang/String; = "com.urbanairship.airmail.NOTIFY"

.field static final ACTION_START_REGISTER:Ljava/lang/String; = "com.urbanairship.airmail.START_REGISTER"

.field static final AIRMAIL_PACKAGE:Ljava/lang/String; = "com.urbanairship.airmail"

.field static final AIRMAIL_RECEIVER:Ljava/lang/String; = "com.urbanairship.airmail.CoreReceiver"

.field static final LOG_TAG:Ljava/lang/String; = "UA.push"

.field private static apid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/urbanairship/push/UA;->apid:Ljava/lang/String;

    return-object v0
.end method

.method public static setApid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/urbanairship/push/UA;->apid:Ljava/lang/String;

    return-void
.end method
