; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcrsr4xh2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [500 x i32], align 16
  %t = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %s) #7
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %t) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv33 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next34, %if.end ]
  %len.0 = phi i32 [ 0, %for.cond2.preheader ], [ %len.1, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv33
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %len.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %t, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %len.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %len.1 = phi i32 [ %inc12, %if.then ], [ %len.0, %for.body4 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond2

for.end15:                                        ; preds = %for.cond2
  %cmp16 = icmp eq i32 %len.0, 0
  br i1 %cmp16, label %cleanup, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.end15
  %sub = add nsw i32 %len.0, -1
  %smax45 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.end46
  %indvars.iv40 = phi i32 [ %sub, %for.cond19.preheader ], [ %indvars.iv.next41, %for.end46 ]
  %i.2 = phi i32 [ 0, %for.cond19.preheader ], [ %inc.i6, %for.end46 ]
  %exitcond46.not = icmp eq i32 %i.2, %smax45
  br i1 %exitcond46.not, label %for.end49, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond19
  %smax42 = call i32 @llvm.smax.i32(i32 %indvars.iv40, i32 noundef 0)
  %wide.trip.count43 = zext nneg i32 %smax42 to i64
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %if.end43
  %indvars.iv37 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next38, %if.end43 ]
  %exitcond44.not = icmp eq i64 %indvars.iv37, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end46, label %for.body26

for.body26:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv37
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx30 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv.next38
  %5 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !9
  %cmp31 = icmp sgt i32 %4, %5
  br i1 %cmp31, label %if.then32, label %if.end43

if.then32:                                        ; preds = %for.body26
  store i32 %5, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.then32, %for.body26
  br label %for.cond22

for.end46:                                        ; preds = %for.cond22
  %inc.i6 = add nuw i32 %i.2, 1
  %indvars.iv.next41 = add i32 %indvars.iv40, -1
  br label %for.cond19

for.end49:                                        ; preds = %for.cond19
  %6 = load i32, ptr %t, align 16, !tbaa !5
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %6)
  %smax51 = call i32 @llvm.smax.i32(i32 %len.0, i32 noundef 1)
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  br label %for.cond52

for.cond52:                                       ; preds = %for.body54, %for.end49
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body54 ], [ 1, %for.end49 ]
  %exitcond53.not = icmp eq i64 %indvars.iv47, %wide.trip.count52
  br i1 %exitcond53.not, label %cleanup, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 44)
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %t, i64 0, i64 %indvars.iv47
  %7 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call55, i32 noundef %7)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond52

cleanup:                                          ; preds = %for.cond52, %for.end15
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load i64, ptr %_M_width, align 8, !tbaa !10, !invariant.load !9
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
