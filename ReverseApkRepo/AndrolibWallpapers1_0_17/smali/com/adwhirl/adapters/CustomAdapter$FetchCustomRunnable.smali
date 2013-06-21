.class Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/adapters/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCustomRunnable"
.end annotation


# instance fields
.field private customAdapter:Lcom/adwhirl/adapters/CustomAdapter;


# direct methods
.method public constructor <init>(Lcom/adwhirl/adapters/CustomAdapter;)V
    .locals 0
    .parameter "customAdapter"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    iget-object v1, v1, Lcom/adwhirl/adapters/CustomAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 149
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    iget-object v2, p0, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    iget-object v2, v2, Lcom/adwhirl/adapters/CustomAdapter;->ration:Lcom/adwhirl/obj/Ration;

    iget-object v2, v2, Lcom/adwhirl/obj/Ration;->nid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/adwhirl/AdWhirlManager;->getCustom(Ljava/lang/String;)Lcom/adwhirl/obj/Custom;

    move-result-object v1

    iput-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    .line 154
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->custom:Lcom/adwhirl/obj/Custom;

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedNow()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;

    iget-object v3, p0, Lcom/adwhirl/adapters/CustomAdapter$FetchCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    invoke-direct {v2, v3}, Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;-><init>(Lcom/adwhirl/adapters/CustomAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
