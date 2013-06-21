.class Lcom/fleapapa/helper/PhoneChange$4;
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
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 96
    sget-object v0, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v1, v1, Lcom/fleapapa/helper/PhoneChange;->lat:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 97
    sget-object v0, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v0}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v1, v1, Lcom/fleapapa/helper/PhoneChange;->lon:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 98
    sput-boolean v5, Lcom/fleapapa/util/My;->isMove:Z

    .line 100
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "gps"

    aput-object v1, v0, v6

    const-string v1, "%f,%f"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v3, v3, Lcom/fleapapa/helper/PhoneChange;->lat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-wide v3, v3, Lcom/fleapapa/helper/PhoneChange;->lon:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/fleapapa/helper/PhoneChange$4;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-virtual {v0}, Lcom/fleapapa/helper/PhoneChange;->finish()V

    .line 102
    return-void
.end method
