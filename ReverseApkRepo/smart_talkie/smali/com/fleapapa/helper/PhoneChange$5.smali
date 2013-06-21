.class Lcom/fleapapa/helper/PhoneChange$5;
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
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$5;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fleapapa/util/My;->isMove:Z

    .line 107
    iget-object v0, p0, Lcom/fleapapa/helper/PhoneChange$5;->this$0:Lcom/fleapapa/helper/PhoneChange;

    sget-object v1, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v1}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    sget-object v3, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v3}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fleapapa/helper/PhoneChange;->setloc(DD)V

    .line 108
    iget-object v0, p0, Lcom/fleapapa/helper/PhoneChange$5;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/PhoneChange;->move(Z)V

    .line 109
    return-void
.end method
