.class final Lccc71/utils/phone/a/g;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 24
    invoke-static {}, Lccc71/utils/phone/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 25
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 30
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lccc71/utils/phone/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/phone/a/f;

    .line 28
    invoke-virtual {v0, p1}, Lccc71/utils/phone/a/f;->c(I)V

    .line 25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 37
    invoke-static {}, Lccc71/utils/phone/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 43
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lccc71/utils/phone/a/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/phone/a/f;

    .line 41
    invoke-virtual {v0, p1}, Lccc71/utils/phone/a/f;->a(Landroid/telephony/ServiceState;)V

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
