.class public abstract Lcom/scoreloop/client/android/core/socialprovider/AuthViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;
    }
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/AuthViewController;->a:Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;

    return-object v0
.end method
