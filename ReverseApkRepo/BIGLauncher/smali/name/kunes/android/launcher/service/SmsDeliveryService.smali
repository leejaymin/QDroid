.class public Lname/kunes/android/launcher/service/SmsDeliveryService;
.super Landroid/app/Service;


# static fields
.field public static a:Lname/kunes/android/launcher/service/SmsDeliveryService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    sput-object p0, Lname/kunes/android/launcher/service/SmsDeliveryService;->a:Lname/kunes/android/launcher/service/SmsDeliveryService;

    return-void
.end method
