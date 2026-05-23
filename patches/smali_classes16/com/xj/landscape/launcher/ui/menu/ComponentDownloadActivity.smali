.class public final Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.implements Landroid/widget/AdapterView$OnItemClickListener;

# mode: 0=repos, 1=categories, 2=assets
.field mode:I
.field mListView:Landroid/widget/ListView;
.field mStatusText:Landroid/widget/TextView;
# all assets fetched from current repo
.field mAllNames:Ljava/util/ArrayList;
.field mAllUrls:Ljava/util/ArrayList;
# filtered subset for current category (shown in mode=2)
.field mCurrentNames:Ljava/util/ArrayList;
.field mCurrentUrls:Ljava/util/ArrayList;
.field mDownloadUrl:Ljava/lang/String;
.field mDownloadFilename:Ljava/lang/String;
.field mCurrentRepo:Ljava/lang/String;
.field mProgressBar:Landroid/widget/ProgressBar;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    # v0-v7 = locals; p0=v8=this; p1=v9=Bundle

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    # init ArrayLists
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentNames:Ljava/util/ArrayList;
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentUrls:Ljava/util/ArrayList;

    # ── Root: black vertical LinearLayout ─────────────────────────────────────
    new-instance v0, Landroid/widget/LinearLayout;
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V
    const v1, 0xFF0D0D0D
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    # ── Header ────────────────────────────────────────────────────────────────
    new-instance v1, Landroid/widget/LinearLayout;
    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V
    const v2, 0xFF161616
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V
    const/16 v2, 0x10
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V
    const/16 v2, 0x10
    invoke-virtual {p0, v2}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->dp(I)I
    move-result v2
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    # ← back button
    new-instance v2, Landroid/widget/TextView;
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v3, "\u2190"
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v3, 0x41A00000
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V
    const v3, 0xFFFF9800
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    const/16 v3, 0xc
    invoke-virtual {p0, v3}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->dp(I)I
    move-result v3
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V
    new-instance v3, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$BhBackBtn;
    invoke-direct {v3, p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$BhBackBtn;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;)V
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    # title (weight=1)
    new-instance v2, Landroid/widget/TextView;
    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v3, "Download Components"
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v3, 0x41A00000
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V
    const v3, 0xFFFF9800
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    const/16 v3, 0x8
    invoke-virtual {p0, v3}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->dp(I)I
    move-result v3
    const/4 v4, 0x0
    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0
    const/4 v5, -0x2
    const/high16 v6, 0x3f800000
    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # add header to root: MATCH_PARENT x WRAP_CONTENT
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, -0x2
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # ── Status text ────────────────────────────────────────────────────────────
    new-instance v1, Landroid/widget/TextView;
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v2, "Select a source"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/high16 v2, 0x41600000
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    const v2, 0xFF888888
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    const/16 v2, 0x10
    invoke-virtual {p0, v2}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->dp(I)I
    move-result v2
    const/16 v3, 0x8
    invoke-virtual {p0, v3}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->dp(I)I
    move-result v3
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, -0x2
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # ── ProgressBar ────────────────────────────────────────────────────────────
    new-instance v1, Landroid/widget/ProgressBar;
    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/16 v2, 0x8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, -0x2
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # ── ListView ────────────────────────────────────────────────────────────────
    new-instance v1, Landroid/widget/ListView;
    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mListView:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    const v2, 0xFF0D0D0D
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V
    # selector: semi-transparent orange for D-pad focus + touch press
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;
    const v3, 0x40FF9800
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
    # add to root: MATCH_PARENT x 0dp weight=1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, 0x0
    const/high16 v5, 0x3f800000
    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showRepos()V
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;
    move-result-object v0
    if-eqz v0, :cond_skip
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I
    move-result v1
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I
    move-result v2
    or-int/2addr v1, v2
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V
    const/4 v1, 0x2
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V
    :cond_skip
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V
    if-eqz p1, :cond_no_focus
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v0
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;
    move-result-object v0
    if-eqz v0, :cond_no_focus
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I
    move-result v1
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I
    move-result v2
    or-int/2addr v1, v2
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V
    const/4 v1, 0x2
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V
    :cond_no_focus
    return-void
.end method

# ── mode=0: source repo list ─────────────────────────────────────────────────
.method public showRepos()V
    .locals 4
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0
    iput v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mode:I

    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v2, "Select a source"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x7
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "Arihany WCPHub"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "Kimchi GPU Drivers"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "StevenMXZ GPU Drivers"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "MTR GPU Drivers"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "Whitebelyash GPU Drivers"
    aput-object v2, v0, v1
    const/4 v1, 0x5
    const-string v2, "The412Banner Nightlies"
    aput-object v2, v0, v1
    const/4 v1, 0x6
    const-string v2, "\u2190 Back"
    aput-object v2, v0, v1

    new-instance v1, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;
    invoke-direct {v1, p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mListView:Landroid/widget/ListView;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    return-void
.end method

# ── mode=1: component type categories ────────────────────────────────────────
.method public showCategories()V
    .locals 4
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1
    iput v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mode:I

    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v2, "Select a component type"
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x6
    new-array v0, v0, [Ljava/lang/String;
    const/4 v1, 0x0
    const-string v2, "DXVK"
    aput-object v2, v0, v1
    const/4 v1, 0x1
    const-string v2, "VKD3D-Proton"
    aput-object v2, v0, v1
    const/4 v1, 0x2
    const-string v2, "Box64"
    aput-object v2, v0, v1
    const/4 v1, 0x3
    const-string v2, "FEXCore"
    aput-object v2, v0, v1
    const/4 v1, 0x4
    const-string v2, "GPU Driver / Turnip"
    aput-object v2, v0, v1
    const/4 v1, 0x5
    const-string v2, "\u2190 Back"
    aput-object v2, v0, v1

    new-instance v1, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;
    invoke-direct {v1, p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mListView:Landroid/widget/ListView;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    return-void
.end method

# ── mode=2: filter mAllNames/mAllUrls by type, show asset list ───────────────
.method public showAssets(I)V
    .locals 8
    # p1 = component type int to filter by

    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    # clear current lists
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    iget-object v3, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentNames:Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    move-result v5
    const/4 v6, 0x0

    :filter_loop
    if-ge v6, v5, :filter_done
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Ljava/lang/String;
    invoke-static {v7}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->detectType(Ljava/lang/String;)I
    move-result v0
    if-ne v0, p1, :filter_skip
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :filter_skip
    add-int/lit8 v6, v6, 0x1
    goto :filter_loop

    :filter_done
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    move-result v0
    if-nez v0, :has_assets

    # empty category — toast and stay in mode=1
    const-string v0, "No components of this type in latest nightly"
    const/4 v1, 0x0
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void

    :has_assets
    const/4 v0, 0x2
    iput v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mode:I

    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Tap a component to download and inject"
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # ── Mark already-downloaded assets with ✓ ────────────────────────────────
    const-string v0, "banners_sources"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    move-result v6
    const/4 v7, 0x0
    :check_dl_loop
    if-ge v7, v6, :check_dl_done
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "dl:"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :check_dl_skip
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "\u2713 "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v3, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    :check_dl_skip
    add-int/lit8 v7, v7, 0x1
    goto :check_dl_loop
    :check_dl_done

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
    move-result-object v0
    new-instance v1, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;
    invoke-direct {v1, p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$DarkAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mListView:Landroid/widget/ListView;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    iget v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mode:I

    # mode=0: repo selection
    if-nez v0, :not0
    packed-switch p3, :sw0_data
    # default: Back (pos 1)
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->finish()V
    return-void

    # mode=1: category selection
    :not0
    const/4 v1, 0x1
    if-ne v0, v1, :not1
    packed-switch p3, :sw1_data
    # default: Back (pos 5)
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showRepos()V
    return-void

    # mode=2: asset selection
    :not1
    const/4 v1, 0x2
    if-ne v0, v1, :ret
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentNames:Ljava/util/ArrayList;
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadFilename:Ljava/lang/String;
    iget-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentUrls:Ljava/util/ArrayList;
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadUrl:Ljava/lang/String;
    # append file extension from URL to mDownloadFilename so stripExt() strips the real
    # extension instead of cutting at a dot inside the version number (e.g. v2.0.0-b → v2.0)
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v2
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    move-result-object v2
    const/16 v3, 0x2e
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I
    move-result v3
    if-lez v3, :no_ext
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v2    # v2 = extension (e.g., ".wcp")
    # Only append if mDownloadFilename doesn't already end with this extension
    iget-object v3, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadFilename:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :no_ext
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadFilename:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadFilename:Ljava/lang/String;
    :no_ext
    # clear list to prevent double-tap
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mListView:Landroid/widget/ListView;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    # show ProgressBar
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    # set status: "Downloading: <filename>"
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Downloading: "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mDownloadFilename:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startDownload()V
    return-void

    :ret
    return-void

    # ── mode=0 switch targets ─────────────────────────────────────────────────
    :sw0_0
    # Arihany WCPHub — clear lists first to prevent mixing with previous fetch
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching Arihany WCPHub..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "Arihany WCPHub"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/Arihany/WinlatorWCPHub/refs/heads/main/pack.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchPackJson(Ljava/lang/String;)V
    return-void

    :sw0_1
    # Kimchi GPU Drivers — clear lists first
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching Kimchi GPU Drivers..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "Kimchi GPU Drivers"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/The412Banner/Nightlies/refs/heads/main/kimchi_drivers.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchGpuDrivers(Ljava/lang/String;)V
    return-void

    :sw0_2
    # StevenMXZ GPU Drivers — clear lists first
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching StevenMXZ GPU Drivers..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "StevenMXZ GPU Drivers"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/The412Banner/Nightlies/refs/heads/main/stevenmxz_drivers.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchGpuDrivers(Ljava/lang/String;)V
    return-void

    :sw0_3
    # MTR Drivers — clear lists first
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching MTR GPU Drivers..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "MTR GPU Drivers"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/The412Banner/Nightlies/refs/heads/main/mtr_drivers.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchGpuDrivers(Ljava/lang/String;)V
    return-void

    :sw0_4
    # Whitebelyash GPU Drivers — clear lists first
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching Whitebelyash GPU Drivers..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "Whitebelyash GPU Drivers"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/The412Banner/Nightlies/refs/heads/main/white_drivers.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchGpuDrivers(Ljava/lang/String;)V
    return-void

    :sw0_5
    # The412Banner Nightlies — clear lists first
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllNames:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mAllUrls:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mStatusText:Landroid/widget/TextView;
    const-string v1, "Fetching The412Banner Nightlies..."
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    iget-object v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mProgressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    const-string v1, "The412Banner Nightlies"
    iput-object v1, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mCurrentRepo:Ljava/lang/String;
    const-string v0, "https://raw.githubusercontent.com/The412Banner/Nightlies/refs/heads/main/nightlies_components.json"
    invoke-virtual {p0, v0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->startFetchPackJson(Ljava/lang/String;)V
    return-void

    # ── mode=1 switch targets ─────────────────────────────────────────────────
    :sw1_0
    const/16 v1, 0xc
    invoke-virtual {p0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showAssets(I)V
    return-void
    :sw1_1
    const/16 v1, 0xd
    invoke-virtual {p0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showAssets(I)V
    return-void
    :sw1_2
    const/16 v1, 0x5e
    invoke-virtual {p0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showAssets(I)V
    return-void
    :sw1_3
    const/16 v1, 0x5f
    invoke-virtual {p0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showAssets(I)V
    return-void
    :sw1_4
    const/16 v1, 0xa
    invoke-virtual {p0, v1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showAssets(I)V
    return-void
    :sw1_5
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showRepos()V
    return-void

    # ── switch data tables ────────────────────────────────────────────────────
    nop
    :sw0_data
    .packed-switch 0x0
        :sw0_0
        :sw0_1
        :sw0_2
        :sw0_3
        :sw0_4
        :sw0_5
    .end packed-switch

    nop
    :sw1_data
    .packed-switch 0x0
        :sw1_0
        :sw1_1
        :sw1_2
        :sw1_3
        :sw1_4
        :sw1_5
    .end packed-switch
.end method

.method public startFetch(Ljava/lang/String;)V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$1;
    invoke-direct {v0, p0, p1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$1;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;Ljava/lang/String;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public startFetchPackJson(Ljava/lang/String;)V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$6;
    invoke-direct {v0, p0, p1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$6;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;Ljava/lang/String;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public startFetchGpuDrivers(Ljava/lang/String;)V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$9;
    invoke-direct {v0, p0, p1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$9;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;Ljava/lang/String;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public startFetchSingleRelease(Ljava/lang/String;)V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$8;
    invoke-direct {v0, p0, p1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$8;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;Ljava/lang/String;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public startFetchAllReleases(Ljava/lang/String;)V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$7;
    invoke-direct {v0, p0, p1}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$7;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;Ljava/lang/String;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public startDownload()V
    .locals 2
    new-instance v0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$3;
    invoke-direct {v0, p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity$3;-><init>(Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    return-void
.end method

.method public onBackPressed()V
    .locals 2
    iget v0, p0, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->mode:I
    const/4 v1, 0x2
    if-eq v0, v1, :mode2
    const/4 v1, 0x1
    if-eq v0, v1, :mode1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    return-void
    :mode2
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showCategories()V
    return-void
    :mode1
    invoke-virtual {p0}, Lcom/xj/landscape/launcher/ui/menu/ComponentDownloadActivity;->showRepos()V
    return-void
.end method

.method public static detectType(Ljava/lang/String;)I
    .locals 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    move-result-object p0
    const-string v0, "box64"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_box64
    const/16 v0, 0x5e
    return v0
    :not_box64
    const-string v0, "fex"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_fex
    const/16 v0, 0x5f
    return v0
    :not_fex
    const-string v0, "vkd3d"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_vkd3d
    const/16 v0, 0xd
    return v0
    :not_vkd3d
    const-string v0, "turnip"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_turnip
    const/16 v0, 0xa
    return v0
    :not_turnip
    const-string v0, "adreno"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_adreno
    const/16 v0, 0xa
    return v0
    :not_adreno
    const-string v0, "driver"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_driver
    const/16 v0, 0xa
    return v0
    :not_driver
    const-string v0, "qualcomm"
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v0
    if-eqz v0, :not_qualcomm
    const/16 v0, 0xa
    return v0
    :not_qualcomm
    const/16 v0, 0xc
    return v0
.end method

.method public dp(I)I
    .locals 2
    # .locals 2 → p0=v2(this), p1=v3(dp value)
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    int-to-float v1, p1
    mul-float v1, v1, v0
    float-to-int v1, v1
    return v1
.end method
