.class final Lname/kunes/android/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/widget/AccessibleListView;


# direct methods
.method constructor <init>(Lname/kunes/android/widget/AccessibleListView;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/widget/a;->a:Lname/kunes/android/widget/AccessibleListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    return-void
.end method
