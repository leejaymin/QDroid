.class Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;
.super Ljava/lang/Object;
.source "ValueStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/ValueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field firstKey:Ljava/lang/String;

.field restKey:Ljava/lang/String;

.field restStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/framework/ValueStore$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ValueStore$Node;-><init>()V

    return-void
.end method
