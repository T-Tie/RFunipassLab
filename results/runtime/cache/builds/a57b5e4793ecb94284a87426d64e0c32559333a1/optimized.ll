; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_19d3ny.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %word = alloca [1000 x [41 x i8]], align 16
  %newword = alloca [1000 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #12
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull align 16 dereferenceable(41000) %word) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(41000) %word, i8 noundef 0, i64 noundef 41000, i1 noundef false) #13
  call void @llvm.lifetime.start.p0(i64 noundef 81000, ptr noundef nonnull align 16 %newword) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(81000) %newword, i8 noundef 0, i64 noundef 81000, i1 noundef false) #13
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.inc
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !12
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then6.i:                                       ; preds = %for.inc
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !11
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt3cin, i64 16), i64 %vbase.offset9.i
  %3 = load i64, ptr %gep, align 8, !tbaa !12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !11
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i) #14
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

land.lhs.true.i:                                  ; preds = %if.then6.i
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8, !invariant.load !11
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i) #14
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !9
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !11
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.else34.i:                                      ; preds = %for.inc
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %do.end.i, %if.then6.i, %land.lhs.true.i, %if.then19.i, %if.then28.i, %if.else34.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !23

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc74
  %indvars.iv3 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next4, %for.inc74 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc74 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc74 ]
  %exitcond.not = icmp eq i64 %indvars.iv3, %wide.trip.count
  %idxprom77 = sext i32 %k.0 to i64
  br i1 %exitcond.not, label %for.end76, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv3
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #15
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 %conv, %j.0
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %sub = add nsw i32 %j.0, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !26
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !26
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx20, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  br label %for.inc74.gvnsink.split

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %call40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx35, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  %inc41 = add nsw i32 %k.0, 1
  br label %for.inc74

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %j.0, 0
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %call51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  br label %for.inc74.gvnsink.split

if.else58:                                        ; preds = %if.else42
  %call65 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  br label %for.inc74.gvnsink.split

for.inc74.gvnsink.split:                          ; preds = %if.then, %if.then44, %if.else58
  %add.sink1 = phi i32 [ %add, %if.else58 ], [ %conv, %if.then44 ], [ %conv, %if.then ]
  %4 = phi i64 [ %idxprom77, %if.else58 ], [ %idxprom77, %if.then44 ], [ %idxprom19, %if.then ]
  %k.1.ph = phi i32 [ %k.0, %if.else58 ], [ %k.0, %if.then44 ], [ %inc18, %if.then ]
  %idxprom69 = sext i32 %add.sink1 to i64
  %arrayidx70 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %4, i64 %idxprom69
  store i8 32, ptr %arrayidx70, align 1, !tbaa !26
  %inc71 = add nsw i32 %add.sink1, 1
  br label %for.inc74

for.inc74:                                        ; preds = %for.inc74.gvnsink.split, %if.then33
  %k.1 = phi i32 [ %inc41, %if.then33 ], [ %k.1.ph, %for.inc74.gvnsink.split ]
  %j.1 = phi i32 [ 0, %if.then33 ], [ %inc71, %for.inc74.gvnsink.split ]
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond2, !llvm.loop !27

for.end76:                                        ; preds = %for.cond2
  %sub79 = add nsw i32 %j.0, -1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !26
  %idxprom84 = sext i32 %j.0 to i64
  %arrayidx85 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !26
  %smax17 = call i32 @llvm.smax.i32(i32 noundef %k.0, i32 noundef -1)
  %5 = add i32 %smax17, 1
  %wide.trip.count18 = zext i32 %5 to i64
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc116, %for.end76
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc116 ], [ 0, %for.end76 ]
  %exitcond19 = icmp eq i64 %indvars.iv13, %wide.trip.count18
  br i1 %exitcond19, label %for.end118, label %for.body88

for.body88:                                       ; preds = %for.cond86
  %arrayidx90 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv13
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx90) #15
  %conv93 = trunc i64 %call92 to i32
  %sub97 = add i64 %call92, 4294967295
  %6 = and i64 %sub97, 4294967295
  %smax10 = call i32 @llvm.smax.i32(i32 %conv93, i32 noundef 0)
  %wide.trip.count11 = zext nneg i32 %smax10 to i64
  %arrayidx103 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv13, i64 %6
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc113, %for.body88
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc113 ], [ 0, %for.body88 ]
  %exitcond12.not = icmp eq i64 %indvars.iv7, %wide.trip.count11
  br i1 %exitcond12.not, label %for.inc116, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %cmp98 = icmp eq i64 %indvars.iv7, %6
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %7 = load i8, ptr %arrayidx103, align 1, !tbaa !26
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc113

if.else106:                                       ; preds = %for.body96
  %arrayidx110 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv13, i64 %indvars.iv7
  %8 = load i8, ptr %arrayidx110, align 1, !tbaa !26
  %call111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  br label %for.inc113

for.inc113:                                       ; preds = %if.then99, %if.else106
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond94, !llvm.loop !28

for.inc116:                                       ; preds = %for.cond94
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond86, !llvm.loop !29

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 81000, ptr noundef nonnull %newword) #14
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef nonnull %word) #14
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #14
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #7 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind willreturn }
attributes #13 = { nofree willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{}
!12 = !{!13, !14, i64 16}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !24, !25}
!28 = distinct !{!28, !24, !25}
!29 = distinct !{!29, !24, !25}
