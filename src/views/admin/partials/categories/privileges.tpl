					<table class="table table-striped table-hover privilege-table">
						<tr>
							<th colspan="2">User</th>
							<!-- BEGIN privileges.labels.users -->
							<th class="text-center">{privileges.labels.users.name}</th>
							<!-- END privileges.labels.users -->
						</tr>
						<!-- IF privileges.users.length -->
						<!-- BEGIN privileges.users -->
						<tr data-uid="{privileges.users.uid}">
							<td><img src="{privileges.users.picture}" title="{privileges.users.username}" /></td>
							<td>{privileges.users.username}</td>
							{function.spawnPrivilegeStates, privileges.users.username, privileges}
						</tr>
						<!-- END privileges.users -->
						<tr>
							<td colspan="{privileges.columnCount}">
								<button type="button" class="btn btn-primary btn-xs pull-right" data-ajaxify="false" data-action="search.user"><i class="fa fa-plus"></i> Add User</button>
							</td>
						</tr>
						<!-- ELSE -->
						<tr>
							<td colspan="{privileges.columnCount}">
								<div class="alert alert-info">
									<button type="button" class="btn btn-primary btn-xs pull-right" data-ajaxify="false" data-action="search.user"><i class="fa fa-plus"></i> Add User</button>
									No user-specific privileges in this category.
								</div>
							</td>
						</tr>
						<!-- ENDIF privileges.users.length -->
					</table>

					<table class="table table-striped table-hover privilege-table">
						<tr>
							<th colspan="2">Group</th>
							<!-- BEGIN privileges.labels.groups -->
							<th class="text-center">{privileges.labels.groups.name}</th>
							<!-- END privileges.labels.groups -->
						</tr>
						<!-- IF privileges.groups.length -->
						<!-- BEGIN privileges.groups -->
						<tr data-group-name="{privileges.groups.name}" data-private="<!-- IF privileges.groups.isPrivate -->1<!-- ELSE -->0<!-- ENDIF privileges.groups.isPrivate -->">
							<td>
								<!-- IF privileges.groups.isPrivate -->
								<i class="fa fa-lock text-muted" title="This group is private"></i>
								<!-- ENDIF privileges.groups.isPrivate -->
								{privileges.groups.name}
							</td>
							<td></td>
							{function.spawnPrivilegeStates, name, privileges}
						</tr>
						<!-- END privileges.groups -->
						<tr>
							<td colspan="{privileges.columnCount}">
								<button type="button" class="btn btn-primary btn-xs pull-right" data-ajaxify="false" data-action="search.group"><i class="fa fa-plus"></i> Add Group</button>
							</td>
						</tr>
						<!-- ELSE -->
						<tr>
							<td colspan="{privileges.columnCount}">
								<div class="alert alert-info">
									<button type="button" class="btn btn-primary btn-xs pull-right" data-ajaxify="false" data-action="search.group"><i class="fa fa-plus"></i> Add Group</button>
									No group-specific privileges in this category.
								</div>
							</td>
						</tr>
						<!-- ENDIF privileges.groups.length -->
					</table>
					<div class="help-block">
						If the <code>registered-users</code> group is granted a specific privilege, all other groups receive an
						<strong>implicit privilege</strong>, even if they are not explicitly defined/checked. This implicit
						privilege is shown to you because all users are part of the <code>registered-users</code> user group,
						and so, privileges for additional groups need not be explicitly granted.
					</div>
