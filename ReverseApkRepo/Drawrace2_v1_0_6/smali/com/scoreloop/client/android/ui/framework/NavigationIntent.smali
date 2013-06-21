.class public Lcom/scoreloop/client/android/ui/framework/NavigationIntent;
.super Ljava/lang/Object;
.source "NavigationIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;
    }
.end annotation


# instance fields
.field private final _runnable:Ljava/lang/Runnable;

.field private final _type:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "type"
    .parameter "runnable"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->_type:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    .line 36
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->_runnable:Ljava/lang/Runnable;

    .line 37
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->_runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 41
    return-void
.end method

.method public getType()Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent;->_type:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    return-object v0
.end method
