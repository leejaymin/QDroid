.class final Lname/kunes/android/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lname/kunes/android/e/e;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/c/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lname/kunes/android/c/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lname/kunes/android/c/h;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 4

    new-instance v0, Lname/kunes/android/e/a;

    invoke-direct {v0, p1}, Lname/kunes/android/e/a;-><init>(Landroid/database/Cursor;)V

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/c/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lname/kunes/android/c/h;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lname/kunes/android/c/h;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Lname/kunes/android/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
