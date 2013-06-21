.class Lexam/thread/Post$1$1;
.super Ljava/lang/Object;
.source "Post.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/Post$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/thread/Post$1;


# direct methods
.method constructor <init>(Lexam/thread/Post$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/Post$1$1;->this$1:Lexam/thread/Post$1;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lexam/thread/Post$1$1;->this$1:Lexam/thread/Post$1;

    #getter for: Lexam/thread/Post$1;->this$0:Lexam/thread/Post;
    invoke-static {v0}, Lexam/thread/Post$1;->access$0(Lexam/thread/Post$1;)Lexam/thread/Post;

    move-result-object v0

    invoke-virtual {v0}, Lexam/thread/Post;->doUpload()V

    .line 120
    return-void
.end method
