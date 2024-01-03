using { dst.app.environments as environments} from '../db/Environments';

service EnvironmentsService @(path: 'environments') {
    entity Environments as projection on environments.Environments {
        *
    }

    entity EnvironmentVariables as projection on environments.EnvironmentVariables {
        *
    }
}