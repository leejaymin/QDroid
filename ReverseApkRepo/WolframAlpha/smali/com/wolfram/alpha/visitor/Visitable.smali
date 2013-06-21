.class public interface abstract Lcom/wolfram/alpha/visitor/Visitable;
.super Ljava/lang/Object;
.source "Visitable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_VISITABLE_ARRAY:[Lcom/wolfram/alpha/visitor/Visitable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/visitor/Visitable;

    sput-object v0, Lcom/wolfram/alpha/visitor/Visitable;->EMPTY_VISITABLE_ARRAY:[Lcom/wolfram/alpha/visitor/Visitable;

    return-void
.end method


# virtual methods
.method public abstract accept(Lcom/wolfram/alpha/visitor/Visitor;)V
.end method
