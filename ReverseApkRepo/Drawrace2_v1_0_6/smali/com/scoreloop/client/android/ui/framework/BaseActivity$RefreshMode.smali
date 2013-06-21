.class public final enum Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;
.super Ljava/lang/Enum;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

.field public static final enum MERGE:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

.field public static final enum SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    const-string v1, "MERGE"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->MERGE:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    const-string v1, "SET"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->MERGE:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->SET:Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 54
    const-class v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/framework/BaseActivity$RefreshMode;

    return-object v0
.end method
