.class Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adwhirl/adapters/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayCustomRunnable"
.end annotation


# instance fields
.field private customAdapter:Lcom/adwhirl/adapters/CustomAdapter;


# direct methods
.method public constructor <init>(Lcom/adwhirl/adapters/CustomAdapter;)V
    .locals 0
    .parameter "customAdapter"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    .line 168
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable;->customAdapter:Lcom/adwhirl/adapters/CustomAdapter;

    invoke-virtual {v0}, Lcom/adwhirl/adapters/CustomAdapter;->displayCustom()V

    .line 172
    return-void
.end method
