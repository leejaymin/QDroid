.class final Lname/kunes/android/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lname/kunes/android/c/f;


# direct methods
.method constructor <init>(Lname/kunes/android/c/f;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/c/o;->a:Lname/kunes/android/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lname/kunes/android/c/o;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->a(Lname/kunes/android/c/f;)Ljava/util/Comparator;

    move-result-object v2

    iget-object v0, p0, Lname/kunes/android/c/o;->a:Lname/kunes/android/c/f;

    invoke-static {v0}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lname/kunes/android/c/o;->a:Lname/kunes/android/c/f;

    invoke-static {v1}, Lname/kunes/android/c/f;->b(Lname/kunes/android/c/f;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
