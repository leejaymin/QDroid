.class public Lcom/google/android/vending/licensing/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/vending/licensing/d;->a:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/vending/licensing/d;->a:Lcom/adobe/fre/FREContext;

    const-string v1, "licensed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/vending/licensing/d;->a:Lcom/adobe/fre/FREContext;

    const-string v1, "notLicensed"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/d;->a:Lcom/adobe/fre/FREContext;

    const-string v2, "notLicensed"

    invoke-virtual {v1, v2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "checkInProgress"

    goto :goto_0

    :pswitch_1
    const-string v0, "invalidPackageName"

    goto :goto_0

    :pswitch_2
    const-string v0, "invalidPublicKey"

    goto :goto_0

    :pswitch_3
    const-string v0, "missingPermission"

    goto :goto_0

    :pswitch_4
    const-string v0, "nonMatchingUID"

    goto :goto_0

    :pswitch_5
    const-string v0, "notMarketManaged"

    goto :goto_0

    :pswitch_6
    const-string v0, "noUserAccount"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
