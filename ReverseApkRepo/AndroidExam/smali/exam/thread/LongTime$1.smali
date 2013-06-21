.class Lexam/thread/LongTime$1;
.super Ljava/lang/Object;
.source "LongTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime;


# direct methods
.method constructor <init>(Lexam/thread/LongTime;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime$1;->this$0:Lexam/thread/LongTime;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 22
    iget-object v0, p0, Lexam/thread/LongTime$1;->this$0:Lexam/thread/LongTime;

    const/4 v1, 0x0

    iput v1, v0, Lexam/thread/LongTime;->mValue:I

    .line 23
    iget-object v0, p0, Lexam/thread/LongTime$1;->this$0:Lexam/thread/LongTime;

    invoke-virtual {v0}, Lexam/thread/LongTime;->Update()V

    .line 24
    return-void
.end method
