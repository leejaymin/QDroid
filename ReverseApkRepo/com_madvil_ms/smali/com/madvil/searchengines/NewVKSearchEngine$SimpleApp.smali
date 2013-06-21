.class public Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
.super Ljava/lang/Object;
.source "NewVKSearchEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madvil/searchengines/NewVKSearchEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleApp"
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field final synthetic this$0:Lcom/madvil/searchengines/NewVKSearchEngine;


# direct methods
.method public constructor <init>(Lcom/madvil/searchengines/NewVKSearchEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->this$0:Lcom/madvil/searchengines/NewVKSearchEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
