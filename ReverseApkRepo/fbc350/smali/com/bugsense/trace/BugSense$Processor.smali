.class public interface abstract Lcom/bugsense/trace/BugSense$Processor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsense/trace/BugSense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Processor"
.end annotation


# virtual methods
.method public abstract beginSubmit()Z
.end method

.method public abstract handlerInstalled()V
.end method

.method public abstract submitDone()V
.end method