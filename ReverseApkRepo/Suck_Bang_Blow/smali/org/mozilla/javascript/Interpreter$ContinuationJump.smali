.class final Lorg/mozilla/javascript/Interpreter$ContinuationJump;
.super Ljava/lang/Object;
.source "Interpreter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Interpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContinuationJump"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6ab05607ef7f8517L


# instance fields
.field branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field result:Ljava/lang/Object;

.field resultDbl:D


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 5
    .parameter "c"
    .parameter "current"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput-object v3, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 158
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_0

    if-nez p2, :cond_2

    .line 162
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 167
    .local v0, chain1:Lorg/mozilla/javascript/Interpreter$CallFrame;
    move-object v1, p2

    .line 171
    .local v1, chain2:Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v4, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int v2, v3, v4

    .line 172
    .local v2, diff:I
    if-eqz v2, :cond_4

    .line 173
    if-gez v2, :cond_3

    .line 176
    move-object v0, p2

    .line 177
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 178
    neg-int v2, v2

    .line 181
    :cond_3
    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 182
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_3

    .line 183
    iget v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    iget v4, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    if-eq v3, v4, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 188
    :cond_4
    :goto_1
    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 190
    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_1

    .line 193
    :cond_5
    iput-object v0, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 194
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-boolean v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v3, :cond_1

    .line 195
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method
