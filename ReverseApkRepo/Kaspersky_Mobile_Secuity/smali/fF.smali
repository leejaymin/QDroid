.class final LfF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LfE;


# direct methods
.method constructor <init>(LfE;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, LfF;->a:LfE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, LfF;->a:LfE;

    invoke-static {v0}, LfE;->a(LfE;)LfI;

    move-result-object v0

    invoke-virtual {v0}, LfI;->a()V

    .line 201
    iget-object v0, p0, LfF;->a:LfE;

    invoke-static {v0}, LfE;->b(LfE;)LfH;

    move-result-object v0

    invoke-virtual {v0}, LfH;->a()V

    .line 202
    return-void
.end method
