.class final enum Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;
.super Ljava/lang/Enum;
.source "ProfileSettingsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

.field public static final enum EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

.field public static final enum MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

.field public static final enum USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

.field public static final enum USERNAME_EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;


# instance fields
.field private final dialogId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    const-string v1, "USERNAME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    const-string v1, "EMAIL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    const-string v1, "USERNAME_EMAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME_EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    .line 92
    new-instance v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    const-string v1, "MERGE_ACCOUNTS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    .line 90
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->USERNAME_EMAIL:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->MERGE_ACCOUNTS:Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->$VALUES:[Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "dialogId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->dialogId:I

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    const-class v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->$VALUES:[Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;

    return-object v0
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfileSettingsListActivity$RequestType;->dialogId:I

    return v0
.end method
