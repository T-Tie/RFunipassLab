; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_2qen73x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@len1 = dso_local local_unnamed_addr global i32 0, align 4
@len2 = dso_local local_unnamed_addr global i32 0, align 4
@len3 = dso_local local_unnamed_addr global i32 0, align 4
@replacement = dso_local global [256 x i8] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [260 x i8], align 16
  %substr = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %substr) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %str, i64 noundef 260)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %substr, i64 noundef 256)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @replacement, i64 noundef 256)
  %call5 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(260) %str) #7
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr @len1, align 4, !tbaa !5
  %call7 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %substr) #7
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr @len2, align 4, !tbaa !5
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @replacement) #7
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr @len3, align 4, !tbaa !5
  call void @_Z6answerPcS_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(260) %str, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(256) %substr)
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %substr) #8
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef nonnull captures(none) %str) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6answerPcS_(ptr nofree noundef readonly captures(none) %str, ptr nofree noundef readonly captures(none) %substr) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @len1, align 4, !tbaa !5
  %1 = load i32, ptr @len2, align 4
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 noundef 0) #9
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc49 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end63, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %3 = load i8, ptr %substr, align 1, !tbaa !9
  %cmp3 = icmp eq i8 %2, %3
  br i1 %cmp3, label %for.cond4, label %for.inc49

for.cond4:                                        ; preds = %for.body, %for.inc
  %4 = phi i8 [ %.pre24, %for.inc ], [ %2, %for.body ]
  %5 = phi i8 [ %.pre, %for.inc ], [ %2, %for.body ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc ], [ 0, %for.body ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc ], [ %indvars.iv, %for.body ]
  %cmp11 = icmp eq i8 %5, %4
  %cmp15 = icmp ne i8 %5, 0
  %or.cond = and i1 %cmp15, %cmp11
  br i1 %or.cond, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %arrayidx6.phi.trans.insert = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv.next6
  %.pre = load i8, ptr %arrayidx6.phi.trans.insert, align 1, !tbaa !9, !invariant.load !10
  %arrayidx9.phi.trans.insert = getelementptr inbounds nuw i8, ptr %substr, i64 %indvars.iv.next8
  %.pre24 = load i8, ptr %arrayidx9.phi.trans.insert, align 1, !tbaa !9, !invariant.load !10
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4
  %6 = trunc nuw nsw i64 %indvars.iv7 to i32
  %cmp18 = icmp eq i32 %1, %6
  br i1 %cmp18, label %for.cond21.preheader, label %for.inc49

for.cond21.preheader:                             ; preds = %for.end
  %wide.trip.count19 = and i64 %indvars.iv, 4294967295
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc26
  %indvars.iv13 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next14, %for.inc26 ]
  %exitcond20.not = icmp eq i64 %indvars.iv13, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond29, label %for.inc26

for.inc26:                                        ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %str, i64 %indvars.iv13
  %7 = load i8, ptr %arrayidx25, align 1, !tbaa !9, !invariant.load !10
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond21, !llvm.loop !14

for.cond29:                                       ; preds = %for.cond21, %for.inc35
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc35 ], [ 0, %for.cond21 ]
  %8 = load i32, ptr @len3, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp30 = icmp slt i64 %indvars.iv21, %9
  br i1 %cmp30, label %for.inc35, label %for.end51

for.inc35:                                        ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [256 x i8], ptr @replacement, i64 0, i64 %indvars.iv21
  %10 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %call34 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %10)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond29, !llvm.loop !15

for.inc49:                                        ; preds = %for.body, %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !16

for.end51:                                        ; preds = %for.cond29
  %indvars31.le = trunc i64 %indvars.iv to i32
  %11 = load i32, ptr @len2, align 4, !tbaa !5
  %add = add nsw i32 %11, %indvars31.le
  %12 = sext i32 %add to i64
  br label %if.end63

if.end63:                                         ; preds = %for.cond, %for.end51
  %add.sink = phi i64 [ %12, %for.end51 ], [ 0, %for.cond ]
  br label %for.cond38.i

for.cond38.i:                                     ; preds = %for.inc44.i, %if.end63
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc44.i ], [ %add.sink, %if.end63 ]
  %13 = load i32, ptr @len1, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp39.i = icmp slt i64 %indvars.iv.i, %14
  br i1 %cmp39.i, label %for.inc44.i, label %outlined_ir_func_0.exit

for.inc44.i:                                      ; preds = %for.cond38.i
  %arrayidx42.i = getelementptr inbounds i8, ptr %str, i64 %indvars.iv.i
  %15 = load i8, ptr %arrayidx42.i, align 1, !tbaa !9, !invariant.load !10
  %call43.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br label %for.cond38.i, !llvm.loop !17

outlined_ir_func_0.exit:                          ; preds = %for.cond38.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nofree }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
