.class Lcom/fleapapa/helper/PhoneChange$2;
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
    iput-object p1, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    .line 70
    iget-object v5, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const v8, 0x7f0600cc

    invoke-virtual {v7, v8}, Lcom/fleapapa/helper/PhoneChange;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 71
    .local v4, pdlg:Landroid/app/ProgressDialog;
    iget-object v5, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const v6, 0x7f080117

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/PhoneChange;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 73
    new-instance v3, Landroid/location/Geocoder;

    iget-object v5, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    invoke-direct {v3, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 75
    .local v3, go:Landroid/location/Geocoder;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v6, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Address;

    invoke-virtual {v5}, Landroid/location/Address;->getLatitude()D

    move-result-wide v7

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Address;

    invoke-virtual {v5}, Landroid/location/Address;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/fleapapa/helper/PhoneChange;->setloc(DD)V

    .line 77
    iget-object v5, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/fleapapa/helper/PhoneChange;->move(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #alist:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v3           #go:Landroid/location/Geocoder;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    return-void

    .line 79
    .restart local v3       #go:Landroid/location/Geocoder;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 80
    .local v2, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    iget-object v6, p0, Lcom/fleapapa/helper/PhoneChange$2;->this$0:Lcom/fleapapa/helper/PhoneChange;

    const v7, 0x7f0600ce

    invoke-virtual {v6, v7}, Lcom/fleapapa/helper/PhoneChange;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
