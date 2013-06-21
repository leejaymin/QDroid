.class public Lcom/sugree/twitter/AsyncTwitterRunner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;
    }
.end annotation


# instance fields
.field tw:Lcom/sugree/twitter/Twitter;


# direct methods
.method public constructor <init>(Lcom/sugree/twitter/Twitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sugree/twitter/AsyncTwitterRunner;->tw:Lcom/sugree/twitter/Twitter;

    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;)V
    .locals 1

    new-instance v0, Lcom/sugree/twitter/AsyncTwitterRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sugree/twitter/AsyncTwitterRunner$1;-><init>(Lcom/sugree/twitter/AsyncTwitterRunner;Landroid/content/Context;Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;)V

    invoke-virtual {v0}, Lcom/sugree/twitter/AsyncTwitterRunner$1;->start()V

    return-void
.end method
