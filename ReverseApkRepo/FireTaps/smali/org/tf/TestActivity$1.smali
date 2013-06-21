.class Lorg/tf/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/TestActivity;->checkConverter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/TestActivity;


# direct methods
.method constructor <init>(Lorg/tf/TestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/TestActivity$1;->this$0:Lorg/tf/TestActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/tf/TestActivity$1;->this$0:Lorg/tf/TestActivity;

    #calls: Lorg/tf/TestActivity;->checkConverter()V
    invoke-static {v0}, Lorg/tf/TestActivity;->access$0(Lorg/tf/TestActivity;)V

    .line 73
    return-void
.end method
