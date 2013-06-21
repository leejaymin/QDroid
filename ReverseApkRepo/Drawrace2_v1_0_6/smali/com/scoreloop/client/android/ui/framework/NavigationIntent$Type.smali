.class public final enum Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;
.super Ljava/lang/Enum;
.source "NavigationIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/NavigationIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

.field public static final enum BACK:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

.field public static final enum EXIT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

.field public static final enum FORWARD:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

.field public static final enum SHORTCUT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->BACK:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const-string v1, "SHORTCUT"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->SHORTCUT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->FORWARD:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    const-string v1, "EXIT"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->EXIT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->BACK:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->SHORTCUT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->FORWARD:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->EXIT:Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/framework/NavigationIntent$Type;

    return-object v0
.end method
