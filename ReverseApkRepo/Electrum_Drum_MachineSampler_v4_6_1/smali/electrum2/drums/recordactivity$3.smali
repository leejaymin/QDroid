.class Lelectrum2/drums/recordactivity$3;
.super Ljava/lang/Object;
.source "recordactivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/recordactivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/recordactivity;


# direct methods
.method constructor <init>(Lelectrum2/drums/recordactivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/recordactivity$3;->this$0:Lelectrum2/drums/recordactivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lelectrum2/drums/recordactivity$3;->this$0:Lelectrum2/drums/recordactivity;

    iget-object v1, v1, Lelectrum2/drums/recordactivity;->docountdown:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    .local v0, tempthread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method
