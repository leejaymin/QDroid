.class Lelectrum2/drums/livemode$9;
.super Ljava/lang/Object;
.source "livemode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/livemode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/livemode;


# direct methods
.method constructor <init>(Lelectrum2/drums/livemode;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/livemode$9;->this$0:Lelectrum2/drums/livemode;

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lelectrum2/drums/livemode$9;->this$0:Lelectrum2/drums/livemode;

    #calls: Lelectrum2/drums/livemode;->LoadList()V
    invoke-static {v0}, Lelectrum2/drums/livemode;->access$0(Lelectrum2/drums/livemode;)V

    .line 1176
    return-void
.end method
