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
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %str) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %substr) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %str, i64 noundef 260)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(256) %substr, i64 noundef 256)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef @replacement, i64 noundef 256)
  %call5 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(260) %str) #6
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr @len1, align 4, !tbaa !5
  %call7 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %substr) #6
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr @len2, align 4, !tbaa !5
  %call9 = call i64 @strlen(ptr noundef @replacement) #6
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr @len3, align 4, !tbaa !5
  call void @_Z6answerPcS_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(260) %str, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(256) %substr)
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef captures(none) %substr) #7
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef captures(none) %str) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6answerPcS_(ptr nofree noundef readonly captures(none) %str, ptr nofree noundef readonly captures(none) %substr) local_unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc50, %for.inc49 ]
  %0 = load i32, ptr @len1, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %if.then53

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8, ptr %str, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %conv = sext i8 %1 to i32
  %2 = load i8, ptr %substr, align 1, !tbaa !9
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %for.inc49

if.then:                                          ; preds = %for.body
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.then
  %k.0 = phi i32 [ %i.0, %if.then ], [ %inc17, %for.inc ]
  %count.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %idxprom5 = sext i32 %k.0 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %str, i64 %idxprom5
  %3 = load i8, ptr %arrayidx6, align 1, !tbaa !9, !invariant.load !10
  %conv7 = sext i8 %3 to i32
  %idxprom8 = sext i32 %count.0 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %substr, i64 %idxprom8
  %4 = load i8, ptr %arrayidx9, align 1, !tbaa !9, !invariant.load !10
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %land.lhs.true, label %for.end

land.lhs.true:                                    ; preds = %for.cond4
  %cmp15 = icmp ne i32 %conv7, 0
  br i1 %cmp15, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.lhs.true
  %inc = add nsw i32 %count.0, 1
  %inc17 = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !11

for.end:                                          ; preds = %for.cond4, %land.lhs.true
  %5 = load i32, ptr @len2, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %count.0, %5
  br i1 %cmp18, label %if.then19, label %for.inc49

if.then19:                                        ; preds = %for.end
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc26, %if.then19
  %k.1 = phi i32 [ 0, %if.then19 ], [ %inc27, %for.inc26 ]
  %cmp22 = icmp slt i32 %k.1, %i.0
  br i1 %cmp22, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond21
  %idxprom24 = sext i32 %k.1 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %str, i64 %idxprom24
  %6 = load i8, ptr %arrayidx25, align 1, !tbaa !9, !invariant.load !10
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  %inc27 = add nsw i32 %k.1, 1
  br label %for.cond21, !llvm.loop !14

for.end28:                                        ; preds = %for.cond21
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc35, %for.end28
  %k.2 = phi i32 [ 0, %for.end28 ], [ %inc36, %for.inc35 ]
  %7 = load i32, ptr @len3, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %k.2, %7
  br i1 %cmp30, label %for.inc35, label %for.end37

for.inc35:                                        ; preds = %for.cond29
  %idxprom32 = sext i32 %k.2 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], ptr @replacement, i64 0, i64 %idxprom32
  %8 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %8)
  %inc36 = add nsw i32 %k.2, 1
  br label %for.cond29, !llvm.loop !15

for.end37:                                        ; preds = %for.cond29
  %9 = load i32, ptr @len2, align 4, !tbaa !5
  %add = add nsw i32 %i.0, %9
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc44, %for.end37
  %k.3 = phi i32 [ %add, %for.end37 ], [ %inc45, %for.inc44 ]
  %10 = load i32, ptr @len1, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %k.3, %10
  br i1 %cmp39, label %for.inc44, label %if.end63

for.inc44:                                        ; preds = %for.cond38
  %idxprom41 = sext i32 %k.3 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %str, i64 %idxprom41
  %11 = load i8, ptr %arrayidx42, align 1, !tbaa !9, !invariant.load !10
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %11)
  %inc45 = add nsw i32 %k.3, 1
  br label %for.cond38, !llvm.loop !16

for.inc49:                                        ; preds = %for.body, %for.end
  %inc50 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !17

if.then53:                                        ; preds = %for.cond
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc60, %if.then53
  %i.1 = phi i32 [ 0, %if.then53 ], [ %inc61, %for.inc60 ]
  %12 = load i32, ptr @len1, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %i.1, %12
  br i1 %cmp55, label %for.inc60, label %if.end63

for.inc60:                                        ; preds = %for.cond54
  %idxprom57 = sext i32 %i.1 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %str, i64 %idxprom57
  %13 = load i8, ptr %arrayidx58, align 1, !tbaa !9, !invariant.load !10
  %call59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  %inc61 = add nsw i32 %i.1, 1
  br label %for.cond54, !llvm.loop !18

if.end63:                                         ; preds = %for.cond54, %for.cond38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!18 = distinct !{!18, !12, !13}
