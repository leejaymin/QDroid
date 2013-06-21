.class Lcom/fleapapa/helper/PhoneChange$6;
.super Ljava/lang/Object;
.source "PhoneChange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/PhoneChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/PhoneChange;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/PhoneChange;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$6;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 113
    const-string v1, "http://maps.google.com/maps?f=d&saddr=%f,%f&daddr=%f,%f&hl=en"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 114
    sget-object v4, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v4}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v4}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/fleapapa/helper/PhoneChange$6;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v4, v4, Lcom/fleapapa/helper/PhoneChange;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/fleapapa/helper/PhoneChange$6;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v4, v4, Lcom/fleapapa/helper/PhoneChange;->lon:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 113
    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, suri:Ljava/lang/String;
    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$6;->this$0:Lcom/fleapapa/helper/PhoneChange;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/PhoneChange;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
