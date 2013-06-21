.class public Lcom/wolfram/android/alpha/QueryTask$ParamComparator;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/QueryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/QueryTask;


# direct methods
.method public constructor <init>(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$ParamComparator;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 778
    check-cast p1, [Ljava/lang/String;

    .end local p1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/wolfram/android/alpha/QueryTask$ParamComparator;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    const/4 v1, 0x0

    .line 780
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
