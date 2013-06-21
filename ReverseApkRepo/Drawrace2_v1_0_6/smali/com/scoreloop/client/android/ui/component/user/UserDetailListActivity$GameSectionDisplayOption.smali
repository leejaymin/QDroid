.class public final enum Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;
.super Ljava/lang/Enum;
.source "UserDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GameSectionDisplayOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

.field public static final enum HIDE:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

.field public static final enum RECOMMEND:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

.field public static final enum SHOW:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

.field public static final enum UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->HIDE:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    const-string v1, "RECOMMEND"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->RECOMMEND:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->SHOW:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->HIDE:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->RECOMMEND:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->SHOW:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->UNKNOWN:Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->$VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    const-class v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->$VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/component/user/UserDetailListActivity$GameSectionDisplayOption;

    return-object v0
.end method
