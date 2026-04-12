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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #11
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull dereferenceable(41000) %word) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(41000) %word, i8 noundef 0, i64 noundef 41000, i1 noundef false) #12
  call void @llvm.lifetime.start.p0(i64 noundef 81000, ptr noundef nonnull align 16 %newword) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(81000) %newword, i8 noundef 0, i64 noundef 81000, i1 noundef false) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 false, i1 true, i1 false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !10
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #13
  br i1 %call16.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %3 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !10, !invariant.load !9
  %cmp17.i = icmp slt i64 %3, 1
  %cmp18.i = icmp ult i64 %2, %3
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #13
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 %conv.i, i64 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !21

for.cond2:                                        ; preds = %for.cond, %for.inc74
  %4 = phi i32 [ %.pre, %for.inc74 ], [ %0, %for.cond ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc74 ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %j.1, %for.inc74 ], [ 0, %for.cond ]
  %k.0 = phi i32 [ %k.1, %for.inc74 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp3 = icmp slt i64 %indvars.iv54, %5
  br i1 %cmp3, label %for.body4, label %for.end76

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv54
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #14
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 %j.0, %conv
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %sub = add nsw i32 %j.0, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom10, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !24
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom10, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !24
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx20, ptr noundef nonnull dereferenceable(1) %arrayidx6) #13
  %sext = shl i64 %call8, 32
  %idxprom28 = ashr exact i64 %sext, 32
  %arrayidx29 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19, i64 %idxprom28
  store i8 32, ptr %arrayidx29, align 1, !tbaa !24
  %inc30 = add nsw i32 %conv, 1
  br label %for.inc74

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %idxprom34 = sext i32 %k.0 to i64
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom34
  %call40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx35, ptr noundef nonnull dereferenceable(1) %arrayidx6) #13
  %inc41 = add nsw i32 %k.0, 1
  br label %for.inc74

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %j.0, 0
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom45
  %idxprom55 = sext i32 %add to i64
  %arrayidx56 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom45, i64 %idxprom55
  %inc57 = add nsw i32 %add, 1
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %call51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #13
  store i8 32, ptr %arrayidx56, align 1, !tbaa !24
  br label %for.inc74

if.else58:                                        ; preds = %if.else42
  %call65 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #13
  store i8 32, ptr %arrayidx56, align 1, !tbaa !24
  br label %for.inc74

for.inc74:                                        ; preds = %if.then, %if.then44, %if.else58, %if.then33
  %j.1 = phi i32 [ %inc30, %if.then ], [ 0, %if.then33 ], [ %inc57, %if.then44 ], [ %inc57, %if.else58 ]
  %k.1 = phi i32 [ %inc18, %if.then ], [ %inc41, %if.then33 ], [ %k.0, %if.then44 ], [ %k.0, %if.else58 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !25

for.end76:                                        ; preds = %for.cond2
  %idxprom77 = sext i32 %k.0 to i64
  %sub79 = add nsw i32 %j.0, -1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !24
  %idxprom84 = sext i32 %j.0 to i64
  %arrayidx85 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !24
  %smax64 = call i32 @llvm.smax.i32(i32 %k.0, i32 -1)
  %6 = add i32 %smax64, 1
  %wide.trip.count65 = zext i32 %6 to i64
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc116, %for.end76
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc116 ], [ 0, %for.end76 ]
  %exitcond66 = icmp eq i64 %indvars.iv60, %wide.trip.count65
  br i1 %exitcond66, label %for.end118, label %for.body88

for.body88:                                       ; preds = %for.cond86
  %arrayidx90 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv60
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx90) #14
  %conv93 = trunc i64 %call92 to i32
  %sub97 = add i64 %call92, 4294967295
  %7 = and i64 %sub97, 4294967295
  %smax = call i32 @llvm.smax.i32(i32 %conv93, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %arrayidx103 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv60, i64 %7
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc113, %for.body88
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc113 ], [ 0, %for.body88 ]
  %exitcond.not = icmp eq i64 %indvars.iv57, %wide.trip.count
  br i1 %exitcond.not, label %for.inc116, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %cmp98 = icmp eq i64 %indvars.iv57, %7
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %8 = load i8, ptr %arrayidx103, align 1, !tbaa !24, !invariant.load !9
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %8)
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc113

if.else106:                                       ; preds = %for.body96
  %arrayidx110 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %9 = load i8, ptr %arrayidx110, align 1, !tbaa !24, !invariant.load !9
  %call111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %9)
  br label %for.inc113

for.inc113:                                       ; preds = %if.then99, %if.else106
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond94, !llvm.loop !26

for.inc116:                                       ; preds = %for.cond94
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond86, !llvm.loop !27

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 81000, ptr noundef nonnull %newword) #13
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef nonnull %word) #13
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!9 = !{}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !7, i64 64, !6, i64 192, !18, i64 200, !19, i64 208}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !22, !23}
!26 = distinct !{!26, !22, !23}
!27 = distinct !{!27, !22, !23}
