; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [10000 x i8], align 16
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 %str) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef nonnull align 16 %b) #7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv27 = phi i32 [ %indvars.iv.next28, %while.body ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %call = tail call i32 @getchar()
  %sext.mask = and i32 %call, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count = zext i32 %indvars.iv27 to i64
  br label %for.cond

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next28 = add nuw i32 %indvars.iv27, 1
  br label %while.cond, !llvm.loop !8

for.cond:                                         ; preds = %for.cond.preheader, %if.end
  %indvars.iv23 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next24, %if.end ]
  %j.0 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body

for.cond15.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %j.0, i32 noundef 0)
  %wide.trip.count33 = zext nneg i32 %smax to i64
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv23
  %0 = load i8, ptr %arrayidx4, align 1, !tbaa !5, !invariant.load !11
  %cmp6 = icmp eq i8 %0, 32
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %1 = add nsw i64 %indvars.iv23, -1
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !5, !invariant.load !11
  %cmp10 = icmp eq i8 %2, 32
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  %3 = trunc nuw nsw i64 %indvars.iv23 to i32
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !12
  %inc13 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %j.1 = phi i32 [ %inc13, %if.then ], [ %j.0, %land.lhs.true ], [ %j.0, %for.body ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond

for.cond15:                                       ; preds = %for.cond15.preheader, %if.end34
  %indvars.iv35 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next36, %if.end34 ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond40.not, label %for.end37, label %for.cond18

for.cond18:                                       ; preds = %for.cond15, %for.body20
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body20 ], [ 0, %for.cond15 ]
  %sum.0 = phi i32 [ %add, %for.body20 ], [ 0, %for.cond15 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end28, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100000 x i32], ptr %b, i64 0, i64 %indvars.iv29
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !12, !invariant.load !11
  %5 = zext i32 %4 to i64
  %cmp23.not = icmp eq i64 %indvars.iv35, %5
  %spec.select = zext i1 %cmp23.not to i32
  %add = add nuw nsw i32 %sum.0, %spec.select
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond18

for.end28:                                        ; preds = %for.cond18
  %cmp29 = icmp eq i32 %sum.0, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end28
  %arrayidx32 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv35
  %6 = load i8, ptr %arrayidx32, align 1, !tbaa !5, !invariant.load !11
  %call33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %6)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end28
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond15

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %str) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load i64, ptr %_M_width, align 8, !tbaa !14, !invariant.load !11
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{!15, !16, i64 16}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !6, i64 64, !13, i64 192, !22, i64 200, !23, i64 208}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
